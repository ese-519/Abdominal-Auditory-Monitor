#include "I2C_base.h"

#ifdef _MBED_

//setup the right i2c class
I2C_base* i2c = new I2C_MBED(SDA, SCL);

//setup millis function
Timer p_t;
int millis()
{
    return p_t.read_ms();
}


#endif //_MBED_