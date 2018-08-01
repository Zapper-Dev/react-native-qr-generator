//
//  RNTQRCode.m
//  ZapperReact
//
//  Created by Keiran van Vuuren on 2018/05/30.
//  Copyright © 2018 Facebook. All rights reserved.
//

#import "RNReactNativeQrcodeNative.h"
#import "QRCodeView.h"

@implementation RNReactNativeQrcodeNative

RCT_EXPORT_MODULE()

RCT_EXPORT_VIEW_PROPERTY(value, NSString)
RCT_EXPORT_VIEW_PROPERTY(size, NSNumber)

- (UIImageView *)view
{
    return [[QRCodeView alloc] init];
}

@end
