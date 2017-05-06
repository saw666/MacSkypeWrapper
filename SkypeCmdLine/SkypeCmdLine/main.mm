#include <iostream>
#include "CPPSkypeAPIWrapper.h"
#include <unistd.h>
#include <thread>
#import <Foundation/Foundation.h>
using namespace std;

void func1()
{
    cout << "I'm Thread\n";
   
    CPPSkypeAPIWrapper::GetInstance()->SkypeConnect();
    @autoreleasepool{
        NSDate* futureDate = [NSDate dateWithTimeIntervalSinceNow:5];
        
        NSTimer* myTimer = [[NSTimer alloc] initWithFireDate:futureDate interval:1 target:myTimer selector:@selector(onTick) userInfo:nil repeats:NO];
        
        NSRunLoop* myLoop = [NSRunLoop currentRunLoop];
        [myLoop addTimer:myTimer forMode:NSDefaultRunLoopMode];
        [myLoop run];
    }
}

int main(int argc, const char * argv[])
{
    cout << "I'm Main\n";
    
    /* If you uncomment this the notification from Skype come to the main thread */
    
    /*CPPSkypeAPIWrapper::GetInstance()->SkypeConnect();
    @autoreleasepool{
        NSRunLoop* myLoop = [NSRunLoop currentRunLoop];
        [myLoop run];
    }*/
    
    thread t1(func1);
    
    t1.join();
    
    return 0;
}

