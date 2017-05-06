#include <string>

class CSkypeCommandWrapper
{
public:
    static void SkypeConnect();
    static void SkypeDisconnect();
    static void SkypeSendCommand(std::string command);
};
