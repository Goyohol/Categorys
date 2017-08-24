//
//  NSString+ChangeDictToJson.h
//  teacherTrains
//
//  Created by RainHeroic Kung on 2016/3/8.
//  Copyright © 2016年 RainHeroic Kung. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (ChangeDictToJson)

+(NSString*)dictionaryToJson:(NSDictionary *)dic; //字典转字符串


+(NSDictionary *)getDictionaryWithJsonString:(NSString *)jsonString; //json字符串 转 字典

@end
