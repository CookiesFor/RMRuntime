//
//  FirstViewController.m
//  RMRuntime
//
//  Created by SIMPLE PLAN on 2017/3/15.
//  Copyright © 2017年 Raymon. All rights reserved.
//

#import "FirstViewController.h"
#import "CreateLabel.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    self.navigationController.navigationBar.barTintColor = [UIColor blackColor];
    self.navigationItem.titleView = [CreateLabel createAttributedStringWithString:@"商城商城开始" withFont:18 withLocation:0 withLength:2];
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"返回" style:UIBarButtonItemStylePlain target:self action:@selector(leftClick)];
    self.navigationItem.leftBarButtonItem.tintColor = [UIColor whiteColor];

    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setFrame:CGRectMake(0, 0, 64, 44)];
    [btn setTitle:@"返回" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    
    
    UIBarButtonItem *rightBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:btn];
    self.navigationItem.rightBarButtonItem = rightBarButtonItem;
    
}

-(void)leftClick
{
    
    [self.navigationController dismissViewControllerAnimated:YES completion:nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
