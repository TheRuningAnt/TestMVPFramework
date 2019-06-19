//
//  Service.m
//  TestProjectFramwork
//
//  Created by 赵广亮 on 2019/6/18.
//  Copyright © 2019年 ZhaoGuangLiang. All rights reserved.
//

#import "Service.h"
@implementation Service
-(void)loadDataWithSuccessBlcok:(void(^)(NSArray*))block{
    //模拟进行网络请求加载。。。。
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        NSArray *result = @[@"10",@"11",@"12",@"13",@"14",@"15",@"16",@"17",@"18",@"19"];
        if (block) {
            block(result);
        }
    });
}
@end
