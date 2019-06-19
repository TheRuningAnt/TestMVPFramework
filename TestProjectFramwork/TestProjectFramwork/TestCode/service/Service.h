//
//  Service.h
//  TestProjectFramwork
//
//  Created by 赵广亮 on 2019/6/18.
//  Copyright © 2019年 ZhaoGuangLiang. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Service : NSObject

-(void)loadDataWithSuccessBlcok:(void(^)(NSArray*))block;

@end

NS_ASSUME_NONNULL_END
