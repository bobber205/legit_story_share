#import "LegitStoryShare.h"
#import <React/RCTLog.h>

#import <Foundation/Foundation.h>
#import <React/RCTBridgeModule.h>

@interface RCT_EXTERN_MODULE(RNLegitStoryShare, NSObject)

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}

+ (BOOL)requiresMainQueueSetup
{
    return YES;
}

RCT_EXTERN_METHOD(isInstagramAvailable: (RCTPromiseResolveBlock)resolve
                  rejecter: (RCTPromiseRejectBlock)reject)

RCT_EXTERN_METHOD(shareToInstagram:(NSDictionary *)config
                  resolver: (RCTPromiseResolveBlock)resolve
                  rejecter: (RCTPromiseRejectBlock)reject)

@end