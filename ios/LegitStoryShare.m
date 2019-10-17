#import "LegitStoryShare.h"
#import <React/RCTLog.h>

#import <Foundation/Foundation.h>
#import <React/RCTBridgeModule.h>

@interface RCT_EXTERN_MODULE(RNLegitStoryShare, NSObject)

RCT_EXTERN_METHOD(addEvent)

RCT_EXTERN_METHOD(isInstagramAvailable: (RCTPromiseResolveBlock)resolve
                  rejecter: (RCTPromiseRejectBlock)reject)

@end

//@implementation LegitStoryShare
//
//RCT_EXPORT_MODULE()
//
//// RCT_EXPORT_METHOD(sampleMethod:(NSString *)stringArgument numberParameter:(nonnull NSNumber *)numberArgument callback:(RCTResponseSenderBlock)callback)
//// {
////     // TODO: Implement some actually useful functionality
//// 	callback(@[[NSString stringWithFormat: @"numberArgument: %@ stringArgument: %@", numberArgument, stringArgument]]);
//// }
//
//RCT_EXPORT_METHOD(addEvent:(NSString *)name location:(NSString *)location)
//{
//  RCTLogInfo(@"final test Pretending to create an event %@ at %@", name, location);
//}
//
//@end
//
//
//
//// CalendarManagerBridge.m
//#import <React/RCTBridgeModule.h>
//
//@interface RCT_EXTERN_MODULE(CalendarManager, NSObject)
//
//RCT_EXTERN_METHOD(addEvent:(NSString *)name location:(NSString *)location )
//
//@end

