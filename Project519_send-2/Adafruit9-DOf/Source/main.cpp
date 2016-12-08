//#include "mbed.h"
//#define _MBED_
//#include "Adafruit_9DOF.h"
//#include "Serial_base.h"
//#include "mbed.h"
//#include "MRF24J40.h"
//
//#define SDI p11
//#define SDO p12
//#define SCK p13
//#define CS p7
//#define RESET p8
//#define POT1 p17  //sthes
//#define POT2 p18  //imu
//
//AnalogIn pot1(POT1);
//AnalogIn pot2(POT2);
//
//PinName mosi(SDI);
//PinName miso(SDO);
//PinName sck(SCK);
//PinName cs(CS);
//PinName reset(RESET);
//// RF tranceiver
//MRF24J40 mrf(mosi, miso, sck, cs, reset);
//
//DigitalOut led1(LED1);
//DigitalOut led2(LED2);
//DigitalOut led3(LED3);
//
//Serial pc(USBTX, USBRX);
//char txBuffer[128];
//char rxBuffer[128];
//int rxLen;
//
//int steth;
//int imu;
//
//
///* Assign a unique ID to the sensors */
//
//Adafruit_9DOF                 dof   = Adafruit_9DOF();
//
//Adafruit_LSM303_Accel_Unified accel = Adafruit_LSM303_Accel_Unified(30301);
//
//Adafruit_LSM303_Mag_Unified   mag   = Adafruit_LSM303_Mag_Unified(30302);
//
//
///* Update this with the correct SLP for accurate altitude measurements */
//
//float seaLevelPressure = SENSORS_PRESSURE_SEALEVELHPA;
//float rest_acc_z = 0.0;
//float rest_acc_y = 0.0;
//int count = 0;
//float orient =0.0;
//float acc = 0.0;
//int move=0;
//float prevval=0.0;
//float newval= 0.0;
//float prevval_x = 0.0;
//float prevval_y = 0.0;
//float prevval_z = 0.0;
///**************************************************************************
///
///
//    @brief  Initialises all the sensors used by this example
//
///
//**************************************************************************/
//
//void initSensors()
//{
//
//  if(!accel.begin())
//  {
// 
//   /* There was a problem detecting the LSM303 ... check your connections */
//    
////    s_com->println(("Ooops, no LSM303 detected ... Check your wiring!"));
//    pc.printf("Ooops, no LSM303 detected ... Check your wiring!");
//
//    while(1);
//
//  }
//  if(!mag.begin())
//  {
//
//    /* There was a problem detecting the LSM303 ... check your connections */
//
//   //s_com->println("Ooops, no LSM303 detected ... Check your wiring!");
////
////    while(1);
//
//  }
//
//}
///**************************************************************************/
//
//
//
///**************************************************************************/
//
//void setup(void)
//{
//
//  
//
////  s_com->println(("START =....... "));
//// s_com->println("");
//
//  
//  /* Initialise the sensors */
//
//  initSensors();
//
//}
//
//
///**************************************************************************
///
///
//    @brief  Constantly check the roll/pitch/heading/altitude/temperature
//
//**************************************************************************/
//
//char* loop(void)
//{
//
//
//  sensors_event_t accel_event;
//
//  sensors_event_t mag_event;
//
//  sensors_vec_t   orientation;
//char * buff;
//buff = (char *) malloc(sizeof(char)*64);
//
//  /* Calculate pitch and roll from the raw accelerometer data */
//
//  accel.getEvent(&accel_event);
//
//  if (dof.accelGetOrientation(&accel_event, &orientation))
//  {
//
//    /* 'orientation' should have valid .roll and .pitch fields */
////   s_com->print(("Roll: "));
////   pc.printf("\n\r");
////   s_com->print(orientation.roll);
////   pc.printf("\n");
////   s_com->print(("Pitch: "));
////    pc.printf("\n\r");
////   s_com->print(orientation.pitch);
//    //pc.printf("\n\r");
//   //s_com->println((""));
//   orient+=((orientation.pitch*orientation.pitch) +(orientation.roll*orientation.roll) + (orientation.heading*orientation.heading) );
////   s_com->print("\ncount is\n");
////   s_com->print(count);
////   s_com->print("\nOrientation \n");
////   s_com->print(orient);
//   
//    pc.printf("\n\r");
//    acc +=((accel_event.acceleration.z*accel_event.acceleration.z) +(accel_event.acceleration.y*accel_event.acceleration.z));
////   s_com->print(((accel_event.acceleration.z*accel_event.acceleration.z) +(accel_event.acceleration.y*accel_event.acceleration.z) + (accel_event.acceleration.x*accel_event.acceleration.x)));
////    s_com->print("\n Acceleration \n");
////    s_com->print(acc);
////    pc.printf("\n\r");
//
//    pc.printf("Acceleration : \n\r");
//    s_com->print(accel_event.acceleration.x);
//    pc.printf("\n\r");
//    s_com->print(accel_event.acceleration.y);
//    pc.printf("\n\r");
//    s_com->print(accel_event.acceleration.z);
//    pc.printf("\n\r");
//   // if((accel_event.acceleration.z - rest_acc_z) >= 8 || (accel_event.acceleration.y - rest_acc_y) >= 8 )
////    {
////    pc.printf("Standing\n\r");
////    move=1;
////    }
////    else if((accel_event.acceleration.z - rest_acc_z) < 8 || (accel_event.acceleration.y - rest_acc_y) < 8 )
////    {    
////    pc.printf("Sleeping");
////    move =1;
////    }
////    if(count == 3)
////    {
////    rest_acc_z = accel_event.acceleration.z;
////    rest_acc_y = accel_event.acceleration.y;
////    }
////    if(count%5 == 0)
////    {
////    prevval =newval;
////    newval = acc;
////    
//////    pc.printf("Acceleration over 5 counts is: \n\r");
//////    s_com->print(acc);
////    if(abs(newval) < 30)
////    {    
////    pc.printf("Moving \n\r");
////    move =1;
////    }
////    acc=0;
////    }
//
//    if((accel_event.acceleration.x < 0) && (accel_event.acceleration.y < 0) && (accel_event.acceleration.z >= 0))
//    {
//     pc.printf("%f , %f, %f \r\n",accel_event.acceleration.x,accel_event.acceleration.y,accel_event.acceleration.z);
//     pc.printf("Sleeping \r\n");  
//     buff = "Sleeping";
//     prevval = accel_event.acceleration.x*accel_event.acceleration.x + accel_event.acceleration.y*accel_event.acceleration.y+accel_event.acceleration.z*accel_event.acceleration.z;
//     prevval_x = accel_event.acceleration.x;
//     prevval_y = accel_event.acceleration.y;
//     prevval_z = accel_event.acceleration.z;
//    /* pc.printf("%f \r\n",accel_event.acceleration.x);
//     pc.printf("%f \r\n",accel_event.acceleration.y);
//     pc.printf("%f \r\n",accel_event.acceleration.z);*/
//    }
//    else if((abs(accel_event.acceleration.x - prevval_x)) < 1 && (abs(accel_event.acceleration.y - prevval_y)) < 1 && (abs(accel_event.acceleration.z - prevval_z)) < 1)
//    {
//     prevval_x = accel_event.acceleration.x;
//     prevval_y = accel_event.acceleration.y;
//     prevval_z = accel_event.acceleration.z;
//     pc.printf("Standing \r\n");
//     buff = "Standing";
//    /* pc.printf("%f \r\n",accel_event.acceleration.x);
//     pc.printf("%f \r\n",accel_event.acceleration.y);
//     pc.printf("%f \r\n",accel_event.acceleration.z);*/
//    }
//    else
//    {
//    prevval_x = accel_event.acceleration.x;
//     prevval_y = accel_event.acceleration.y;
//     prevval_z = accel_event.acceleration.z;
//     pc.printf("Moving \r\n");
//    buff = "Moving";
//     /*pc.printf("%f \r\n",accel_event.acceleration.x);
//     pc.printf("%f \r\n",accel_event.acceleration.y);
//     pc.printf("%f \r\n",accel_event.acceleration.z);*/
//    }
//    
//  }
//
//  
//  /* Calculate the heading using the magnetometer */
//
//  mag.getEvent(&mag_event);
//
//  if (dof.magGetOrientation(SENSOR_AXIS_Z, &mag_event, &orientation))
//  {
//
//    /* 'orientation' should have valid .heading data now */
//   // pc.printf("\n\r");
//    //s_com->print(("Heading: "));
////    s_com->print(orientation.heading);
//    pc.printf("\n\r");
//
//  //  pc.printf("HEADING: ");
////    pc.printf("%u",orientation.heading);
//  }
//
//wait(1);
//count++;
//return buff;
//}
//   
//   int rf_receive(char *data, uint8_t maxLength)
//{
//    uint8_t len = mrf.Receive((uint8_t *)data, maxLength);
//    uint8_t header[8]= {1, 8, 0, 0xA1, 0xB2, 0xC3, 0xD4, 0x00};
//    
//    if(len > 10) {
//        //Remove the header and footer of the message
//        for(uint8_t i = 0; i < len-2; i++) {
//            if(i<8) {
//                //Make sure our header is valid first
//                if(data[i] != header[i])
//                    return 0;
//            } else {
//                data[i-8] = data[i];
//            }
//        }
//        //pc.printf("Received: %s length:%d\r\n", data, ((int)len)-10);
//    }
//    return ((int)len)-10;
//}
//
///**
// * Send data to another MRF24J40.
// *
// * @param data The string to send
// * @param maxLength The length of the data to send.
// *                  If you are sending a null-terminated string you can pass strlen(data)+1
// */
//void rf_send(char *data, uint8_t len)
//{
//    //We need to prepend the message with a valid ZigBee header
//    uint8_t header[8]= {1, 8, 0, 0xA1, 0xB2, 0xC3, 0xD4, 0x00};
//    uint8_t *send_buf = (uint8_t *) malloc( sizeof(uint8_t) * (len+8) );
//    
//    for(uint8_t i = 0; i < len+8; i++) {
//        //prepend the 8-byte header
//        send_buf[i] = (i<8) ? header[i] : data[i-8];
//    }
//    pc.printf("Sent: %s\r\n", send_buf+8);
//    
//    mrf.Send(send_buf, len+8);
//    free(send_buf);
//}
//
//
//    
//int main()
//{
//    uint8_t channel = 10; //channel = (Group# - 1)
//    mrf.SetChannel(channel);
//    char * sendbuff;
//    sendbuff = (char *)malloc(sizeof(char)*64);
//    //Set Baud rate (9600-115200 is ideal)
//    pc.baud(115200);
//    pc.printf("\r\n Start! \r\n");
//    int count = 0;
//    setup();
//
//    while(1) {
//        
//        
////        steth = (uint8_t)(pot1.read() * 100); //sthestoscope
////        imu = (pot2.read() * 100); // imu
//         sendbuff = loop();
//
//            count = count +1;
//            sprintf(txBuffer, " Value is: %s" ,sendbuff);
//            
//            rf_send(txBuffer,strlen(txBuffer) + 1);
//            pc.printf("Sent| %s\r\n", txBuffer);
//            wait(2);
//    } //end loop
//            free(sendbuff);
//
//}