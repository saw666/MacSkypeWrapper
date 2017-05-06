#import <Foundation/Foundation.h>

@class NSString;

@interface CPPWrapper : NSObject

+ (void)skypeNotificationReceived:(NSString*)aNotificationString;
+ (void)skypeBecameAvailable:(NSNotification*)aNotification;
+ (void)skypeBecameUnavailable:(NSNotification*)aNotification;
+ (void)skypeAttachResponse:(unsigned)aAttachResponseCode;

@end
