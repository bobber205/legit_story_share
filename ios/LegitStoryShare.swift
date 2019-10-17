//
//  RNLegitStoryShare.swift
//  RNLegitStoryShare
//
//  Created by Johannes Sorg on 21.11.18.
//  Copyright © 2018 Facebook. All rights reserved.
//

import Foundation
import UIKit
// import React

@objc(RNLegitStoryShare)
class RNLegitStoryShare: NSObject{
    let domain: String = "RNLegitStoryShare"
    let FILE: String = "file"
    let BASE64: String = "base64"

    let UNKNOWN_ERROR: String = "An unknown error occured in RNLegitStoryShare"

    // let instagramScheme = URL(string: "instagram://")
   let instagramScheme = URL(string: "instagram-stories://share")
    
    @objc
    func constantsToExport() -> [String: Any]! {
        return [
            "FILE": FILE,
            "BASE64": BASE64
        ]
    }

    @objc
    func addEvent() {
        print("IN CUSTOM ADD EVENT")
        // RCTLogInfo("final test Pretending to create an event IN SWIFT");
    }

    @objc
    func isInstagramAvailable(_ resolve: RCTPromiseResolveBlock,
                              rejecter reject: RCTPromiseRejectBlock) -> Void {
        // resolve(true)
        resolve(UIApplication.shared.canOpenURL(instagramScheme!))
    }
    
//    @objc
//    func isInstagramAvailable(_ resolve: RCTPromiseResolveBlock,
//                              rejecter reject: RCTPromiseRejectBlock) -> Void {
//        resolve(UIApplication.shared.canOpenURL(instagramScheme!))
//    }
//
//    func _shareToInstagram(_ backgroundData: NSData? = nil,
//                           stickerData: NSData? = nil,
//                           attributionLink: String,
//                           backgroundBottomColor: String,
//                           backgroundTopColor: String,
//                           resolve: RCTPromiseResolveBlock,
//                           reject: RCTPromiseRejectBlock){
//        do{
//            if(UIApplication.shared.canOpenURL(instagramScheme!)){
//
//                var pasteboardItems: Dictionary<String, Any> = [:]
//
//                if(backgroundData != nil){
//                    pasteboardItems["com.instagram.sharedSticker.backgroundImage"] = backgroundData!
//                }
//
//                if(stickerData != nil){
//                    pasteboardItems["com.instagram.sharedSticker.stickerImage"] = stickerData!
//                    pasteboardItems["com.instagram.sharedSticker.backgroundTopColor"] = backgroundTopColor
//                    pasteboardItems["com.instagram.sharedSticker.backgroundBottomColor"] = backgroundBottomColor
//                }
//
//                pasteboardItems["com.instagram.sharedSticker.contentURL"] = attributionLink
//
//                UIPasteboard.general.items = [pasteboardItems]
//                UIApplication.shared.openURL(instagramScheme!)
//                resolve("ok")
//
//            } else {
//                throw NSError(domain: domain, code: 400, userInfo: nil)
//            }
//        }catch {
//            reject(domain, error.localizedDescription, error)
//        }
//    }
//
//
//    @objc
//    func shareToInstagram(_ config: NSDictionary,
//               resolver resolve: RCTPromiseResolveBlock,
//               rejecter reject: RCTPromiseRejectBlock) -> Void {
//
//        do {
//            if (config["backgroundAsset"] == nil && config["stickerAsset"] == nil){
//                let error = NSError(domain: domain, code: 400, userInfo: ["Error": "Background Asset and Sticker Asset are nil"])
//                return reject("No Assets", "Background Asset and Sticker Asset are nil", error)
//            }
//
//            let backgroundAsset = RCTConvert.nsurl(config["backgroundAsset"])
//            let backgroundBottomColor = RCTConvert.nsString(config["backgroundBottomColor"]) ?? ""
//            let backgroundTopColor = RCTConvert.nsString(config["backgroundTopColor"]) ?? ""
//            let stickerAsset = RCTConvert.nsurl(config["stickerAsset"])
//            let attributionLink: String = RCTConvert.nsString(config["attributionLink"]) ?? ""
//
//            var backgroundData: NSData? = nil
//            var stickerData:NSData? = nil
//
//            if(backgroundAsset != nil){
//                let decodedData = try Data(contentsOf: backgroundAsset!,
//                                           options: NSData.ReadingOptions(rawValue: 0))
//
//                backgroundData = UIImage(data: decodedData)!.pngData()! as NSData
//            }
//
//            if(stickerAsset != nil){
//                let decodedStickerData = try Data(contentsOf: stickerAsset!,
//                                                  options: NSData.ReadingOptions(rawValue: 0))
//
//                stickerData = UIImage(data: decodedStickerData)!.pngData()! as NSData
//            }
//
//            _shareToInstagram(backgroundData,
//                              stickerData: stickerData,
//                              attributionLink: attributionLink,
//                              backgroundBottomColor: backgroundBottomColor,
//                              backgroundTopColor: backgroundTopColor,
//                              resolve: resolve,
//                              reject: reject)
//
//        } catch {
//            reject(domain, error.localizedDescription, error)
//        }
//    }
}
