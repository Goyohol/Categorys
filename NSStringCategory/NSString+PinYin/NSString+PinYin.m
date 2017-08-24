//
//  NSString+PinYin.m
//  teacherTrains
//
//  Created by RainHeroic Kung on 2016/8/23.
//  Copyright © 2016年 RainHeroic Kung. All rights reserved.
//

#import "NSString+PinYin.h"

@implementation NSString (PinYin)

//汉字、英语的拼音
- (NSString *)pinyin{
    NSMutableString *str = [self mutableCopy];
    CFStringTransform(( CFMutableStringRef)str, NULL, kCFStringTransformMandarinLatin, NO);
    CFStringTransform((CFMutableStringRef)str, NULL, kCFStringTransformStripDiacritics, NO);
    return [[str stringByReplacingOccurrencesOfString:@" " withString:@""] lowercaseString];
}

@end
