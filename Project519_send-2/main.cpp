//Team 11: Auditory monitor sensor


#include "mbed.h"
#include "rtos.h"
#include "adc.h"
#include "Adafruit_9DOF.h"
#include "Serial_base.h"
#include "mbed.h"
#include "MRF24J40.h"
#include "TextLCD.h"


#define NONE 250




//MRF24J
#define SDI p11
#define SDO p12
#define SCK p13
#define CS p7
#define RESET p8


//============================
#define POT1 p19  //sthes


//MRF24J40
PinName mosi(SDI);
PinName miso(SDO);
PinName sck(SCK);
PinName cs(CS);
PinName reset(RESET);
// RF tranceiver
MRF24J40 mrf(mosi, miso, sck, cs, reset);


// LEDs
DigitalOut led1(LED1);
DigitalOut led2(LED2);
DigitalOut led3(LED3);
DigitalOut led4(LED4);


// Timer
Timer timer;
Timer imutimer;


// Serial port for showing RX data.
Serial pc(USBTX, USBRX);


// Send / receive buffers.
// IMPORTANT: The MRF24J40 is intended as zigbee tranceiver; it tends
// to reject data that doesn't have the right header. So the first
// 8 bytes in txBuffer look like a valid header. The remaining 120
// bytes can be used for anything you like.
char txBuffer[128];
char rxBuffer[128];
int rxLen;


/* Assign a unique ID to the sensors */


Adafruit_9DOF dof   = Adafruit_9DOF();
Adafruit_LSM303_Accel_Unified accel = Adafruit_LSM303_Accel_Unified(30301);
Adafruit_LSM303_Mag_Unified   mag   = Adafruit_LSM303_Mag_Unified(30302);


// variables
Timer stethTimer;
char *stetdata="noise detected";
float analogSample[1024];
AnalogIn pot1(POT1);
float readIn;
int countval =0;
double val[5];
bool getBias = false;
char *imudata;
int patient_walking_time = 0;
float prevval_x = 0.0;
float prevval_y = 0.0;
float prevval_z = 0.0;
float currval_x = 0.0;
float currval_y = 0.0;
float currval_z = 0.0;
bool detectflag = false;
bool can_eat = false;
Mutex mutex; 
float bias;


//LiquidCrystal lcd( 8, 9, 4, 5, 6, 7 );
TextLCD lcd(p25, p26, p21, p22, p23, p24); // rs, e, d4-d7

/**
 * Send data to another MRF24J40.
 *
 * @param data The string to send
 * @param maxLength The length of the data to send.
 *                  If you are sending a null-terminated string you can pass strlen(data)+1
 */
void rf_send(char *data, uint8_t len)
{
    //We need to prepend the message with a valid ZigBee header
    uint8_t header[8]= {1, 8, 0, 0xA1, 0xB2, 0xC3, 0xD4, 0x00};
    uint8_t *send_buf = (uint8_t *) malloc( sizeof(uint8_t) * (len+8) );
    
    for(uint8_t i = 0; i < len+8; i++) {
        //prepend the 8-byte header
        send_buf[i] = (i<8) ? header[i] : data[i-8];
    }
   // pc.printf("Sent: %s\r\n", send_buf+8);
    
    mrf.Send(send_buf, len+8);
    free(send_buf);
}


void initSensors()
{
  if(!accel.begin())
  {
    pc.printf("Ooops, no LSM303 detected ... Check your wiring!");
    while(1);
  }
}


void setup(void)
{
  initSensors();
}


char* loop(void)
{
 
  sensors_event_t accel_event;
  sensors_event_t mag_event;
  sensors_vec_t   orientation;
  char * buff = "Standing";
  buff = (char *) malloc(sizeof(char)*64);
  
  /* Calculate pitch and roll from the raw accelerometer data */
  accel.getEvent(&accel_event);

  if (dof.accelGetOrientation(&accel_event, &orientation))
  {
    
    if(getBias == true)
    {
         //setting the bias
        for(int j = 0 ; j < 3; j++)
        {
            bias += sqrt((accel_event.acceleration.x*accel_event.acceleration.x)+(accel_event.acceleration.z*accel_event.acceleration.z) +(accel_event.acceleration.y*accel_event.acceleration.y));
            wait(0.5);
        }
        bias = bias/3;
       // pc.printf("%f\r\n", bias);   
        buff = "bias";
    }
    else
    {
        prevval_x = currval_x;
        prevval_y = currval_y;
        prevval_z = currval_z;
        
       /* pc.printf("pre x: %f\r\n",prevval_x);
        pc.printf("prev y: %f\r\n",prevval_y);
        pc.printf("prev z: %f\r\n",prevval_z);*/
        
        currval_x = accel_event.acceleration.x*100 - bias;
        currval_y = accel_event.acceleration.y*100 - bias;
        currval_z = accel_event.acceleration.z*100 - bias;
        
       /* pc.printf("curr x: %f\r\n",currval_x);
        pc.printf("curr y: %f\r\n",currval_y);
        pc.printf("curr z: %f\r\n",currval_z);
        
        pc.printf("diff x: %f\r\n",abs(currval_x - prevval_x));
        pc.printf("diff y: %f\r\n",abs(currval_y - prevval_y));
        pc.printf("diff z: %f\r\n",abs(currval_z - prevval_z));*/
        
        if((detectflag == false)&&((abs(currval_x - prevval_x)> 60) || (abs(currval_z - prevval_z)> 60)))
        {
            detectflag = true;
            buff = "Standing";
          //  pc.printf("should be here\r\n");
        }
        else if (detectflag == true)
        {
            int some_counter = 0;
            while( some_counter < 4)
            {
                if(!((abs(currval_x - prevval_x)> 60) && (abs(currval_z - prevval_z)> 60)))
                {
                    detectflag = false;
                    some_counter = 0;
                    buff = "Standing";
                 //   pc.printf("here1\r\n");
                    break;   
                }
                else if(some_counter == 3)
                {
                    patient_walking_time+=2;
                    some_counter = 0;
                    buff = "Walking";
                    break;
                }
                else
                {
                  //  pc.printf("here2\r\n");
                   // buff = "Walking";
                    some_counter++;
                }
                wait(0.5);
            }
           // pc.printf("broke while loop\r\n");
        }   
    }
    }  
  /* Calculate the heading using the magnetometer */
  mag.getEvent(&mag_event);
  if (dof.magGetOrientation(SENSOR_AXIS_Z, &mag_event, &orientation))
  {
   // pc.printf("\n\r");
  }
    wait(1);
  //  count++;
//    pc.printf("buff %s\r\n",buff);
    return buff;
}


void imu_thread(void const *args) 
{ 
    //pc.printf("inside imu thread\r\n");
    getBias = true;
    Timer disp;
    disp.start();
    char* prevIMU;
    while(1)
    { 
        imutimer.start();
        if(imutimer.read_us() >= 3000000)
        {
//          imu_mutex.lock();
            //prevbuff = imudata;
           // pc.printf("correct imu : %s\r\n", prevbuff);
            imudata = loop();
            pc.printf("%s\r\n", imudata);
            getBias = false;
            if(strcmp(imudata,"Walking"))
            {
                   patient_walking_time += 2;
            }
            
            imutimer.reset();
//           imu_mutex.unlock();
        }
        if(disp.read_us()> 3000000)
        {
            mutex.lock();
            if(strlen(imudata) == 0)
            {
                imudata = prevIMU;
            }
            else
            {
               prevIMU = imudata;   
            }
        rf_send(imudata,strlen(imudata) + 1);
        pc.printf("final imu %s\r\n",imudata); 
        lcd.cls();
        lcd.printf("%s\n", imudata);
        mutex.unlock();
        disp.reset();
        }
    } 
}


// Extracted from Numerical Recipes in C
void vFFT(float* data, unsigned int nn)
{
    /*Replaces data[1..2*nn] by its discrete Fourier transform, if isign is input as 1; or replaces
    data[1..2*nn] by nn times its inverse discrete Fourier transform, if isign is input as -1.
    data is a complex array of length nn or, equivalently, a real array of length 2*nn. nn MUST
    be an integer power of 2 (this is not checked for!).*/
    unsigned int n,mmax,m,j,istep,i;
    double wtemp,wr,wpr,wpi,wi,theta; 
    float tempr,tempi;
    
    //pc.printf("inside vfftr\r\n");
  //  wtemp = 0.0;
    #define SWAP(a,b) tempr=(a);(a)=(b);(b)=tempr
    
    n=nn << 1;
    j=1;
    for (i=1;i<n;i+=2) { 
        if(j>i){
            SWAP(data[j],data[i]); 
            SWAP(data[j+1],data[i+1]);
        }
        m=n >> 1;
        while (m >= 2 &&j>m){
            j-=m;
            m >>= 1;
        }
        j+=m;
    }
    
    mmax=2;
    while (n > mmax) 
    { 
        istep=mmax << 1;
        theta=(6.28318530717959/mmax);
        wtemp=sin(0.5*theta);
        wpr = -2.0*wtemp*wtemp;
        wpi=sin(theta);
        wr=1.0;
        wi=0.0;
        for (m=1;m<mmax;m+=2) { 
            for (i=m;i<=n;i+=istep) {
                j=i+mmax; 
                tempr=wr*data[j]-wi*data[j+1]; // accumulating FFT of multiple signal samples to average out 
                tempi=wr*data[j+1]+wi*data[j];
                data[j]=data[j]+ data[i]-tempr;
                data[j+1]=data[j+1] + data[i+1]-tempi;
                data[i] += tempr;
                data[i+1] += tempi;
            }
            wr=(wtemp=wr)*wpr-wi*wpi+wr;
            wi=wi*wpr+wtemp*wpi+wi;
        }
        
        //computing average of the FFTs computed. Averaging also removes average white noise from signals sampled.
        
        for(int i = 0; i < n; i++)
        {
            data[i] = data[i] / n;
        }
        mmax=istep;
    }
//    int count =0 ;
    for(int k = 0 ; k < 512; k+=2)
    {
        countval++;
        if(countval == 257)
        val[0] = sqrt((data[k]*data[k]) + (data[k+1]*data[k+1]));
        if(countval ==289)
        val[1]=sqrt((data[k]*data[k]) + (data[k+1]*data[k+1]));       
    }              
}


void stet_thread(void const *args) 
{    
    //pc.printf("inside sthethescope thread\r\n");
    wait_ms(500);
    stethTimer.start();
    int i_count = 0;
    int n = 256;
    countval = 0;
    int soundcounter = 0;
    int iteration = 0;
    while(1)
    {
    iteration = 0;
    while(iteration < 8)
    {
    while(1)
    {
        memset(analogSample,0,1024);
        if(iteration == 7)
        {
            break;
        }
        if(stethTimer.read_us() >= 250)
        {    
             readIn = pot1.read()*3.3;
             analogSample[i_count] = readIn;
             i_count++;
             if(i_count >= 256)
             {  
                i_count = 0;
                vFFT(analogSample,n);
                break;
             }
        }
        stethTimer.reset(); 
    }
        iteration++;
   }
   
   
    if(val[0]< -0.22967)
                    {
                        //stet_mutex.lock();
                        stetdata = "Noise detected";
                        pc.printf("%s\r\n",stetdata);
                        //stet_mutex.unlock();
                        
                    }
                else if(val[1]<0.293406)
                {
                 //       stet_mutex.lock();
                        stetdata = "Stomach sounds";
                        soundcounter++;
                        pc.printf("%s\r\n",stetdata);
                   //     stet_mutex.unlock();
                }
                else
                {
                     //   stet_mutex.lock();
                        stetdata = "Noise detected";
                        pc.printf("%s\r\n",stetdata);
                       // stet_mutex.unlock();    
                } 
                
                if(soundcounter == 20)
                {
                  can_eat = true;   
                }
                
                mutex.lock();
                rf_send(stetdata,strlen(stetdata) + 1);
                lcd.cls();
               lcd.printf("%s\n", stetdata);
                mutex.unlock();
    }
}


int main (void)
{
    //Set the Channel. 0 is default, 15 is max
    uint8_t channel = 10; //channel = (Group# - 1)
    mrf.SetChannel(channel);
    
    //Set Baud rate (9600-115200 is ideal)
    pc.baud(115200);
   // pc.printf("\r\n Start! \r\n");
    int count = 0;
    //Start Timer
    timer.start();
    setup();
    Thread thread2(stet_thread);
    wait(2);
    //Scale Joystick Values, range[-100, 100]
  //  jstick.setScale(-100, 100);
 //   pc.printf("Scaled");
    Thread thread1(imu_thread);
    wait(2);
 
    while(1) 
    {
        
    } //end loopa
}//end main
