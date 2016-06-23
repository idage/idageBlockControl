//
//  ViewController.m
//  idageBlockContorl
//
//  Created by 冯亮 on 16/6/23.
//  Copyright © 2016年 idage. All rights reserved.
//

#import "ViewController.h"
#import "UIControl+blockTarget.h"
#import "NSNotificationCenter+blockTarget.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    UIButton *button1 = [UIButton buttonWithType:UIButtonTypeCustom];
    [button1 setFrame:CGRectMake(100, 200, 100, 50)];
    [button1 setBackgroundColor:[UIColor grayColor]];
    [self.view addSubview:button1];
    [button1 addActionforControlEvents:UIControlEventTouchUpInside respond:^{
        NSLog(@"点击2按钮了");
    }];
    
    
    UITextField *textfield = [[UITextField alloc]initWithFrame:CGRectMake(50, 300, 100, 40)];
    textfield.backgroundColor = [UIColor blueColor];
    [textfield addActionforControlEvents:UIControlEventEditingChanged respond:^{
        NSLog(@"内容改变了");
    }];
    [self.view addSubview:textfield];
    
    
    [[NSNotificationCenter defaultCenter]addObserver:self name:@"testNo" object:nil respond:^{
        //接收到通知
    }];

    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
