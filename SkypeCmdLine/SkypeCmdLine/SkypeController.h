#import <Cocoa/Cocoa.h>
#import "./Skype.framework/Headers/Skype.h"

@interface SkypeController : NSObject <SkypeAPIDelegate>
{
}

+ (instancetype)getInstance;

- (void)skypeConnect;
- (void)skypeDisconnect;
- (void)skypeSendCommand:(NSString*)commandText;

@end
