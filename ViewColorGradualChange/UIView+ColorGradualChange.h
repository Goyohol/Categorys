//
//  UIView+ColorGradualChange.h
//  teacherTrains
//
//  Created by RainHeroic Kung on 2016/8/16.
//  Copyright © 2016年 RainHeroic Kung. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (ColorGradualChange)

-(void)changViewGradualChangeWithHorisTopToBottom:(BOOL)isTopToBottom VerisLeftToRight:(BOOL)isLeftToRight WithColorArr:(NSArray *)colorArr AndSectionArr:(NSArray *)sectionArr;

@end
