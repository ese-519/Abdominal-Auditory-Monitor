#ifndef I2C_BASE_H
#define I2C_BASE_H

#define _MBED_

//Base class to extend I2C support to multiple platforms
typedef char byte;


class I2C_base
{
 public:
    virtual void frequency (int frequency)                             = 0; //set the communication frequency
    virtual bool read      (int address, byte* data, int length)       = 0; //read data from the bus
    virtual bool write     (int address, const byte* data, int length) = 0; //write data to the bus  
    virtual bool writeByte (int address, byte data)                    = 0; //write byte to the bus
    
 private:
    int _frequency;
};

extern I2C_base* i2c;


 //MBED programming environmnet
#ifdef _MBED_
#include "mbed.h"
//define SDA and SCL if not already defined
#ifndef SDA
    #define SDA p28
#endif

#ifndef SCL
    #define SCL p27
#endif
//*******************************************


/* should be placed somewhere else, just debug code*/



int millis();

/***************************************************/
 
class I2C_MBED: public I2C_base
{
 public:
    I2C_MBED (PinName pSDA, PinName pSCL): _i2c(pSDA,pSCL){}
    virtual void frequency (int hz)
    {
        _i2c.frequency(hz);
    } 
    virtual bool read(int address, byte* data, int length)
    {
        return !_i2c.read(address<<1,data,length);
    }
    virtual bool write(int address, const byte* data, int length)
    {
        return !_i2c.write(address<<1,data,length);
    }
    virtual bool writeByte(int address, byte data)
    {
        return write(address, &data, 1);
    }

 private:
    I2C _i2c;
};



#endif //_MBED_


#endif //I2C_BASE_H