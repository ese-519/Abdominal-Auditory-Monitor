#include "mbed.h"
#include "MRF24J40.h"

#define SDI p11
#define SDO p12
#define SCK p13
#define CS p7
#define RESET p8



PinName mosi(SDI);
PinName miso(SDO);
PinName sck(SCK);
PinName cs(CS);
PinName reset(RESET);
// RF tranceiver
MRF24J40 mrf(mosi, miso, sck, cs, reset);

DigitalOut led1(LED1);
DigitalOut led2(LED2);
DigitalOut led3(LED3);

Serial pc(USBTX, USBRX);
char txBuffer[128];
char rxBuffer[128];
int rxLen;

int bowel;
int walk;
int can_eat = 0;
char* prev;
int count;

int steth;
int imu;

int rf_receive(char *data, uint8_t maxLength)
{
    uint8_t len = mrf.Receive((uint8_t *)data, maxLength);
    uint8_t header[8]= {1, 8, 0, 0xA1, 0xB2, 0xC3, 0xD4, 0x00};
    
    if(len > 10) {
        //Remove the header and footer of the message
        for(uint8_t i = 0; i < len-2; i++) {
            if(i<8) {
                //Make sure our header is valid first
                if(data[i] != header[i])
                    return 0;
            } else {
                data[i-8] = data[i];
            }
        }
       // pc.printf("Received: %s length:%d\r\n", data, ((int)len)-10);
    }
    return ((int)len)-10;
}

/**
 * Send data to another MRF24J40.
 *
 * @param data The string to send
 * @param maxLength The length of the data to send.
 *                  If you are sending a null-terminated string you can pass strlen(data)+1
 */
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


int main (void)
{
    //Set the Channel. 0 is default, 15 is max
    uint8_t channel = 10; //channel = (Group# - 1)
    mrf.SetChannel(channel);
    int mov = 0;
            int stan =0;
            int slee = 0;
    //Set Baud rate (9600-115200 is ideal)
    pc.baud(115200);
    //pc.printf("\r\n Start! \r\n");
    int count = 0;
    //Start Timer
    //timer.start();
    
    //Scale Joystick Values, range[-100, 100]
//    jstick.setScale(-100, 100);
//    pc.printf("Scaled");
    while(1) 
    {
         //RECEIVE DATA: Try to receive some data
        rxLen = rf_receive(rxBuffer, 128);
       // pc.printf("buffer is %s\r\n", rxBuffer);
       // pc.printf("len is %d\r\n", rxLen);
        if(rxLen > 0) 
        {   
            pc.printf("%s\r\n", rxBuffer);
           if(strcmp(rxBuffer,"Stomach sounds"))
                bowel = bowel+1;
           if(strcmp(rxBuffer,"Walking"))
                walk = walk+2;
            if(bowel == 20)
                can_eat = 1;
            pc.printf("Movement: %f,Bowel %d", walk/60,can_eat);
          wait(3);
        }
    } //end loop
}//end main