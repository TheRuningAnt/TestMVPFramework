//
//  ViewController.m
//  TestProjectFramwork
//
//  Created by 赵广亮 on 2019/6/17.
//  Copyright © 2019年 ZhaoGuangLiang. All rights reserved.
//

#import "ViewController.h"
#import "TestViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)clickPushBtn:(id)sender {
    
    TestViewController *testVC = [[TestViewController alloc] init];
    [self presentViewController:testVC animated:YES completion:nil];
}


@end
