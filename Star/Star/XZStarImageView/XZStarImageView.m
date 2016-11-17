//
//  XZStarImageView.m
//  Star
//
//  Created by 古今 on 2016/11/1.
//  Copyright © 2016年 夜风易冷. All rights reserved.
//

#import "XZStarImageView.h"

//星级图片视图宽
#define kStarImageViewWidth 67.0
//星级图片视图高
#define kStarImageViewHeight 10.0

//调节值
#define kAdjustPadding 1.0
//图层视图宽
#define kLayerViewWidth (kStarImageViewWidth + kAdjustPadding)
//图层视图高
#define kLayerViewHeight (kStarImageViewHeight + kAdjustPadding*2)


@interface XZStarImageView ()
//图层视图
@property (nonatomic, strong) UIView *layerView;

@end

@implementation XZStarImageView
#pragma mark - init
/**
 实例化星级图片视图
 
 @param origin     位置(x&y): width=67.0; height = 10.0
 @param starLevel 星级标准
 
 @return 星级图片视图对象
 */
+(instancetype)classInitWithOrigin:(CGPoint)origin starLevel:(NSInteger)starLevel {
    XZStarImageView *starImageView = [[self alloc] initWithFrame:CGRectMake(origin.x, origin.y, kStarImageViewWidth, kStarImageViewHeight)];
    if (starImageView) {
        starImageView.starLevel = starLevel;
        
        [starImageView updateStarImageViewStyle];
    }
    
    return starImageView;
}

#pragma mark - setter
- (void)setStarLevel:(NSInteger)starLevel {
    _starLevel = MIN(starLevel, 5);
    
    [self updateLayerViewFrame];
}

#pragma mark - getter
- (UIView *)layerView {
    if (_layerView == nil) {
        UIView *layerView = [[UIView alloc] initWithFrame:CGRectMake(0, -kAdjustPadding, kLayerViewWidth, kLayerViewHeight)];
        layerView.backgroundColor = [UIColor whiteColor];
        
        [self addSubview:layerView];
        _layerView = layerView;
    }
    
    return _layerView;
}

#pragma mark - system methods
- (void)awakeFromNib {
    [super awakeFromNib];
    
    [self updateStarImageViewStyle];
}

#pragma mark - custom methods

/**
 更新星级图片视图样式
 */
- (void)updateStarImageViewStyle {
    self.backgroundColor =[UIColor whiteColor];
    self.image = [UIImage imageNamed:@"hotel_star_icon"];
    
    [self updateLayerViewFrame];
}

/**
 更新图层视图frame
 */
- (void)updateLayerViewFrame {
    CGFloat layerViewX = self.starLevel * (kLayerViewWidth / 5);
    CGFloat layerViewWidth = kLayerViewWidth - layerViewX;
    
    self.layerView.frame = CGRectMake(layerViewX, -kAdjustPadding, layerViewWidth, kLayerViewHeight);
}

@end
