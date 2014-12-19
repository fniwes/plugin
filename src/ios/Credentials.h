//
//  Credentials.h
//  PhoneGapSpeechTest
//
//  Created by Adam on 10/15/12.
//
//

#import <Foundation/Foundation.h>

@interface CredentialsParser : NSObject {
	NSData* _appKey;
}

- (id) initWithAppKey: (NSString*)appKey;
- (NSData*) get;
   
@end

