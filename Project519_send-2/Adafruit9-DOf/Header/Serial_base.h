#ifndef SERIAL_BASE_H
#define SERIAL_BASE_H

#define _MBED_

class Serial_base
{
 public:
    
    virtual void print(const char* data)   = 0;
    virtual void print(int data)           = 0;
    virtual void print(double data)        = 0;
    
    virtual void println(const char* data) = 0;
    virtual void println(int data)         = 0;
    virtual void println(double data)      = 0;
    
    virtual void setPrecision(int prec)    = 0;
};

extern Serial_base* s_com;


#ifdef _MBED_
#include <iostream>
#include <iomanip>

class Serial_MBED: public Serial_base
{
 public:
    virtual void print(const char* data){
        _print(data);
    }
    virtual void print(int data){
        _print(data);
    }
    virtual void print(double data){
        _print(data);
    }
    
    virtual void println(const char* data){
        _println(data);
    }
    virtual void println(int data){
        _println(data);
    }
    virtual void println(double data){
        _println(data);
    }
    virtual void setPrecision(int p){
        std::cout.precision(p);
        //std::cout.setf( std::ios::fixed, std:: ios::floatfield );
    }
 private:
    template<typename T>
    void _print(T data) {
        std::cout<<data<<std::flush;
    }
    template<typename T>
    void _println(T data){
        std::cout<<data<<std::endl<<std::flush;
    }
        
};


#endif //_MBED_

#endif