//
//  UIView+ColorGradualChange.m
//  teacherTrains
//
//  Created by RainHeroic Kung on 2016/8/16.
//  Copyright © 2016年 RainHeroic Kung. All rights reserved.
//

#import "UIView+ColorGradualChange.h"

@implementation UIView (ColorGradualChange)

-(void)changViewGradualChangeWithHorisTopToBottom:(BOOL)isTopToBottom VerisLeftToRight:(BOOL)isLeftToRight WithColorArr:(NSArray *)colorArr AndSectionArr:(NSArray *)sectionArr {
    
    int a,b,c,d;
    if (isTopToBottom) {
        if (isLeftToRight) {
            a = 0; b = 0;
            c = 1; d = 1;
        } else {
            a = 1; b = 0;
            c = 0; d = 1;
        }
    } else {
        if (isLeftToRight) {
            a = 0; b = 1;
            c = 1; d = 0;
        } else {
            a = 1; b = 1;
            c = 0; d = 0;
        }
    }
    CAGradientLayer *layer = [CAGradientLayer layer];
    layer.startPoint = CGPointMake(a, b);//（0左，0上）角 开始。默认值是(0.5,0.0)表示从x轴为中间，y为顶端的开始变化
    layer.endPoint = CGPointMake(c, d);//（1右，1下）角 结束。默认值是(0.5,1.0)表示从x轴为中间，y为低端的结束变化
    layer.colors = [NSArray arrayWithArray:colorArr];     //@[(id)ChosedColor.CGColor,(id)ChosedColor.CGColor];
    layer.locations = [NSArray arrayWithArray:sectionArr];//@[@0.0f,@0.6f];
    layer.frame = self.layer.bounds;
    [self.layer insertSublayer:layer atIndex:0];
}

@end
