//
//  NSString+ChangeDictToJson.m
//  teacherTrains
//
//  Created by RainHeroic Kung on 2016/3/8.
//  Copyright © 2016年 RainHeroic Kung. All rights reserved.
//

#import "NSString+ChangeDictToJson.h"

@implementation NSString (ChangeDictToJson)

//字典转字符串
+(NSString*)dictionaryToJson:(NSDictionary *)dic {
    NSError * error = nil;
    NSData * jsonData = [NSJSONSerialization dataWithJSONObject:dic options:NSJSONWritingPrettyPrinted error:&error];
    return [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
    
}

//字符串转字典
+(NSDictionary *)getDictionaryWithJsonString:(NSString *)jsonString {
    if (jsonString == nil) {
        return nil;
    }
    
    NSData *jsonData = [jsonString dataUsingEncoding:NSUTF8StringEncoding];
    NSError *err;
    NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:jsonData options:NSJSONReadingMutableContainers error:&err];
    
    if(err) {
//        NSLog(@"json解析失败：%@",err);
        return nil;
    }
    
    return dic;
}


@end
