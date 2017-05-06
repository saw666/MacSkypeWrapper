#include "CPPSkypeAPIWrapper.h"
#include "CSkypeCommandWrapper.h"
#include <iostream>
#include <stdio.h>

CPPSkypeAPIWrapper* CPPSkypeAPIWrapper::Instance = nullptr;


void CPPSkypeAPIWrapper::SkypeNotificationReceived(const std::string& notification)
{
    LogToConsole(std::string("Notification: ") + notification);
}
void CPPSkypeAPIWrapper::SkypeAttachResponse(int attachResponseCode)
{
    LogToConsole(std::string("Attach response code: ") + std::to_string(attachResponseCode));
    
    //	switch (aAttachResponseCode)
    //	{
    //		case 0: [infoView insertText:@"Failed to connect\n"];break;
    //		case 1:	[infoView insertText:@"Successfully connected to Skype!\n"];break;
    //		default:[infoView insertText:@"Unknown response from Skype\n"];break;
    //	}
}
void CPPSkypeAPIWrapper::SkypeBecameAvailable()
{
    LogToConsole("Skype became available");
}

void CPPSkypeAPIWrapper::SkypeBecameUnavailable()
{
    LogToConsole("Skype became unavailable");
}

void CPPSkypeAPIWrapper::LogToConsole(const std::string& msg)
{
    std::cout << msg << "\n";
}

void CPPSkypeAPIWrapper::SkypeConnect()
{
    CSkypeCommandWrapper::SkypeConnect();
}

void CPPSkypeAPIWrapper::SkypeDisconnect()
{
    CSkypeCommandWrapper::SkypeDisconnect();
}

void CPPSkypeAPIWrapper::SkypeSendCommand(std::string& command)
{
    CSkypeCommandWrapper::SkypeSendCommand(command);
}
