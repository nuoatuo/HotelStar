//
//  XZStarImageView.h
//  Star
//
//  Created by 古今 on 2016/11/1.
//  Copyright © 2016年 夜风易冷. All rights reserved.
//
#pragma mark -  ***星级图片视图***

#import <UIKit/UIKit.h>

@interface XZStarImageView : UIImageView

//星级标准:最大值是5
@property (nonatomic, assign) NSInteger starLevel;

/**
 实例化星级图片视图

 @param origin     位置(x&y): width=67.0; height = 10.0
 @param starLevel 星级标准

 @return 星级图片视图对象
 */
+(instancetype)classInitWithOrigin:(CGPoint)origin starLevel:(NSInteger)starLevel;



@end
