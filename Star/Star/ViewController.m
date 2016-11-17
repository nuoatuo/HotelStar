//
//  ViewController.m
//  Star
//
//  Created by 古今 on 2016/11/1.
//  Copyright © 2016年 夜风易冷. All rights reserved.
//

#import "ViewController.h"
#import "XZStarImageView.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet XZStarImageView *starView;
@property (nonatomic, strong) XZStarImageView *starImageView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

//    self.starImageView = [XZStarImageView classInitWithOrigin:CGPointMake(100.0f, 100.0f) starLevel:2];
//    [self.view addSubview:self.starImageView];
    
    self.starView.starLevel = 2;
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
//    NSLog(@"starLevel ============= %ld",self.starImageView.starLevel);
//    self.starImageView.starLevel = 4;
    self.starView.starLevel += 1;
    NSLog(@"starLevel ============= %ld",self.starView.starLevel);
}


@end
