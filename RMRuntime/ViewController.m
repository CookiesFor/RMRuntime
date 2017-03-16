//
//  ViewController.m
//  RMRuntime
//
//  Created by SIMPLE PLAN on 17/3/13.
//  Copyright © 2017年 SIMPLE PLAN. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+touch.h"
#import "CreateLabel.h"
#import "FirstViewController.h"
@interface ViewController ()
{
    NSInteger _clickNum;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //状态栏、导航栏字体颜色
//    self.navigationController.navigationBar.barStyle = UIBarStyleBlack;
//    //导航栏背景颜色
    self.navigationController.navigationBar.barTintColor = [UIColor blackColor];
    
    UIButton * button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.frame = CGRectMake(50, 100, 100, 50);
    button.backgroundColor = [UIColor redColor];
    [button setTitle:@"连续点击" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(buttonAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    //button防爆力点击，间隔5s，看打印效果
    button.timeInterVal = 5;
    
    self.view.backgroundColor = [UIColor whiteColor];

    
    
    //导航栏字体颜色
   self.navigationItem.titleView = [CreateLabel createAttributedStringWithString:@"全部订单" withFont:18 withLocation:2 withLength:2];
    
    
    
}
- (void)buttonAction
{
    _clickNum += 1;
    NSLog(@"点击了%ld下",(long)_clickNum);
    
    
    
    FirstViewController *firstVC = [[FirstViewController alloc]init];
    
    UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:firstVC];
    
    [self.navigationController presentViewController:nav animated:YES completion:nil];
    
}
//默认的值是黑色的
-(UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleDefault;
    
}
// 是否隐藏状态栏
- (BOOL)prefersStatusBarHidden
{
    return NO;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
