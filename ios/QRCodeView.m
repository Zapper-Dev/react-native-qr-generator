//
//  QRCodeView.m
//  ZapperReact
//
//  Created by Keiran van Vuuren on 2018/05/30.
//  Copyright © 2018 Zapper. All rights reserved.
//

#import "QRCodeView.h"
#import "QRCodeGenerator.h"

@implementation QRCodeView

- (void)setValue:(NSString *)value {
    _value = value;
    
    QRCodeGenerator *qr = [[QRCodeGenerator alloc] initWithString: self.value];
    qr.size = CGSizeMake(400.0f, 400.0f); // 400x400 size
    qr.color = [CIColor colorWithRGBA:@"#000000"]; // white QR Code color
    qr.backgroundColor = [CIColor colorWithRGBA:@"#FFFFFF"]; // black background color
    [self setImage:[qr getImage]];
}

- (void)setSize:(NSNumber *)value {
    _size = value;
    if (![_value isEqualToString:@""]) {
        QRCodeGenerator *qr = [[QRCodeGenerator alloc] initWithString: self.value];
        qr.size = CGSizeMake([_size doubleValue], [_size doubleValue]);
        qr.color = [CIColor colorWithRGBA:@"#000000"];
        qr.backgroundColor = [CIColor colorWithRGBA:@"#FFFFFF"];
        [self setImage:[qr getImage]];
    }
}


@end
