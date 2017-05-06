#import "CPPWrapper.h"
#include "CPPSkypeAPIWrapper.h"

@implementation CPPWrapper

+ (void)skypeNotificationReceived:(NSString*)aNotificationString
{
    CPPSkypeAPIWrapper::GetInstance()->SkypeNotificationReceived([aNotificationString UTF8String]);
}
+ (void)skypeBecameAvailable:(NSNotification*)aNotification
{
    CPPSkypeAPIWrapper::GetInstance()->SkypeBecameAvailable();
}
+ (void)skypeBecameUnavailable:(NSNotification*)aNotification
{
    CPPSkypeAPIWrapper::GetInstance()->SkypeBecameUnavailable();
}
+ (void)skypeAttachResponse:(unsigned)aAttachResponseCode
{
    CPPSkypeAPIWrapper::GetInstance()->SkypeAttachResponse(aAttachResponseCode);
}

@end
