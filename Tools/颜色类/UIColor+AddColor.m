//
//  UIColor+AddColor.m
//  FlatUI
//
//  Created by lzhr on 5/3/13.
//  Copyright (c) 2013 lzhr. All rights reserved.
//

#import "UIColor+AddColor.h"

@implementation UIColor (AddColor)


+ (UIColor *) colorFromHexCode:(NSString *)hexString {
    NSString *cleanString = [hexString stringByReplacingOccurrencesOfString:@"#" withString:@""];
    if([cleanString length] == 3) {
        cleanString = [NSString stringWithFormat:@"%@%@%@%@%@%@",
                       [cleanString substringWithRange:NSMakeRange(0, 1)],[cleanString substringWithRange:NSMakeRange(0, 1)],
                       [cleanString substringWithRange:NSMakeRange(1, 1)],[cleanString substringWithRange:NSMakeRange(1, 1)],
                       [cleanString substringWithRange:NSMakeRange(2, 1)],[cleanString substringWithRange:NSMakeRange(2, 1)]];
    }
    if([cleanString length] == 6) {
        cleanString = [cleanString stringByAppendingString:@"ff"];
    }
    
    unsigned int baseValue;
    [[NSScanner scannerWithString:cleanString] scanHexInt:&baseValue];
    
    float red = ((baseValue >> 24) & 0xFF)/255.0f;
    float green = ((baseValue >> 16) & 0xFF)/255.0f;
    float blue = ((baseValue >> 8) & 0xFF)/255.0f;
    float alpha = ((baseValue >> 0) & 0xFF)/255.0f;
    
    return [UIColor colorWithRed:red green:green blue:blue alpha:alpha];
}

+ (UIColor *) ngaBackColor
{
    return [UIColor colorWithRed:253.0f/255.0f green:243.0f/255.0f blue:216.0f/255.0f alpha:1];
}

+ (UIColor *) ngaDarkColor
{
    return [UIColor colorWithRed:249.0f/255.0f green:238.0f/255.0f blue:167.0f/255.0f alpha:1];
}

+ (UIColor *) turquoiseColor {
    return [UIColor colorFromHexCode:@"1ABC9C"];
}

+ (UIColor *) greenSeaColor {
    return [UIColor colorFromHexCode:@"16A085"];
}

+ (UIColor *) emerlandColor {
    return [UIColor colorFromHexCode:@"2ECC71"];
}

+ (UIColor *) nephritisColor {
    return [UIColor colorFromHexCode:@"27AE60"];
}

+ (UIColor *) peterRiverColor {
    return [UIColor colorFromHexCode:@"3498DB"];
}

+ (UIColor *) belizeHoleColor {
    return [UIColor colorFromHexCode:@"2980B9"];
}

+ (UIColor *) amethystColor {
    return [UIColor colorFromHexCode:@"9B59B6"];
}

+ (UIColor *) wisteriaColor {
    return [UIColor colorFromHexCode:@"8E44AD"];
}

+ (UIColor *) wetAsphaltColor {
    return [UIColor colorFromHexCode:@"34495E"];
}

+ (UIColor *) midnightBlueColor {
    return [UIColor colorFromHexCode:@"2C3E50"];
}

+ (UIColor *) sunflowerColor {
    return [UIColor colorFromHexCode:@"F1C40F"];
}

+ (UIColor *) tangerineColor {
    return [UIColor colorFromHexCode:@"F39C12"];
}

+ (UIColor *) carrotColor {
    return [UIColor colorFromHexCode:@"E67E22"];
}

+ (UIColor *) pumpkinColor {
    return [UIColor colorFromHexCode:@"D35400"];
}

+ (UIColor *) alizarinColor {
    return [UIColor colorFromHexCode:@"E74C3C"];
}

+ (UIColor *) pomegranateColor {
    return [UIColor colorFromHexCode:@"C0392B"];
}

+ (UIColor *) cloudsColor {
    return [UIColor colorFromHexCode:@"ECF0F1"];
}

+ (UIColor *) silverColor {
    return [UIColor colorFromHexCode:@"BDC3C7"];
}

+ (UIColor *) concreteColor {
    return [UIColor colorFromHexCode:@"95A5A6"];
}

+ (UIColor *) asbestosColor {
    return [UIColor colorFromHexCode:@"7F8C8D"];
}

@end
