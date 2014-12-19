//
//
//

#import "Credentials.h"

@implementation CredentialsParser 

- (id) initWithAppKey: (NSString*)appKey {
 	self = [super init];
 	if(!self) return nil;

	_appKey = [self hexStringToByteArray:appKey];
	return self;
}

- (NSData *) get {
    return _appKey;
};

// Private method
// Thanks to http://stackoverflow.com/questions/2501033/nsstring-hex-to-bytes
- (NSData *) hexStringToByteArray: (NSString *)key {
    const char *chars = [key UTF8String];
    int i = 0, len = key.length;

    NSMutableData *data = [NSMutableData dataWithCapacity:len / 2];
    char byteChars[3] = {'\0','\0','\0'};
    unsigned long wholeByte;

    while (i < len) {
        byteChars[0] = chars[i++];
        byteChars[1] = chars[i++];
        wholeByte = strtoul(byteChars, NULL, 16);
        [data appendBytes:&wholeByte length:1];
    }

    return data;
}

@end
