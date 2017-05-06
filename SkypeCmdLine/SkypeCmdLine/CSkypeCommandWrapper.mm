#include "CSkypeCommandWrapper.h"
#import <Foundation/Foundation.h>
#import "SkypeController.h"

void CSkypeCommandWrapper::SkypeConnect()
{
    [[SkypeController getInstance] skypeConnect];
}

void CSkypeCommandWrapper::SkypeDisconnect()
{
    [[SkypeController getInstance] skypeDisconnect];
}
void CSkypeCommandWrapper::SkypeSendCommand(std::string command)
{
    [[SkypeController getInstance] skypeSendCommand:[NSString stringWithUTF8String:command.c_str()]];
}
