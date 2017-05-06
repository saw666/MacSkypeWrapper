#ifndef CPPSkypeEventWrapper_h
#define CPPSkypeEventWrapper_h

#include <string>

class string;

class CPPSkypeAPIWrapper
{
private:
    static CPPSkypeAPIWrapper* Instance;
    CPPSkypeAPIWrapper() {}
    
public:
    static void Init()
    {
        if (nullptr == Instance)
            Instance = new CPPSkypeAPIWrapper();
        
    }
    static CPPSkypeAPIWrapper* GetInstance(){
        return Instance;
    }
    
    void SkypeNotificationReceived(const std::string& notification);
    void SkypeAttachResponse(int attachResponseCode);
    void SkypeBecameAvailable();
    void SkypeBecameUnavailable();
 
    void SkypeConnect();
    void SkypeDisconnect();
    void SkypeSendCommand(std::string& command);
    
    void LogToConsole(const std::string& msg);
};

#endif /* CPPSkypeEventWrapper_hpp */
