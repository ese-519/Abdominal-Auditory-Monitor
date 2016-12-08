#include "Serial_base.h"

#ifdef _MBED_

//Setup MBED serial communication abstraction layer
Serial_base* s_com = new Serial_MBED();

#endif