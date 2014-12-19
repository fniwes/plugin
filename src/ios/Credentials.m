//
//
//

#import "Credentials.h"

const unsigned char SpeechKitApplicationKey[] = {};

@implementation Credentials 
@synthesize appId, appKey;

//PLEASE ENTER YOUR APP ID INSIDE THE QUOTES BELOW
NSString* APP_ID = @"";

-(NSString *) getAppId {
    return [NSString stringWithString:APP_ID];
};

@end
