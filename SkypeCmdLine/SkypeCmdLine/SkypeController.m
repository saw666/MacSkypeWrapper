#import "SkypeController.h"
#import "CPPWrapper.h"

NSString* const cMyApplicationName = @"My Skype API Tester";

@implementation SkypeController

+ (instancetype)getInstance
{
    static SkypeController *sharedInstance = nil;
    
    if (sharedInstance == nil)
    {
        static dispatch_once_t onceToken;
        dispatch_once(&onceToken, ^{
            sharedInstance = [[SkypeController alloc] init];
            [SkypeAPI setSkypeDelegate:[SkypeController getInstance]];
            // Do any other initialisation stuff here
        });
    }
    return sharedInstance;
}

// required delegate method
- (NSString*)clientApplicationName
{
	return cMyApplicationName;
}

- (void)skypeAttachResponse:(unsigned)aAttachResponseCode
{
    [CPPWrapper skypeAttachResponse:aAttachResponseCode];
}

- (void)skypeNotificationReceived:(NSString*)aNotificationString
{
    [CPPWrapper skypeNotificationReceived:aNotificationString];
}

- (void)skypeBecameAvailable:(NSNotification*)aNotification
{
    
    [CPPWrapper skypeBecameAvailable:aNotification];
}

- (void)skypeBecameUnavailable:(NSNotification*)aNotification
{
	[CPPWrapper skypeBecameUnavailable:aNotification];
}

- (void)skypeConnect
{
    [SkypeAPI connect];
}
- (void)skypeDisconnect
{
    [SkypeAPI disconnect];
}
- (void)skypeSendCommand:(NSString*)commandText
{
    [SkypeAPI sendSkypeCommand:commandText];
}

@end
