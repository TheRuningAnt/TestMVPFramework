//
//  TestPresenter.h
//  TestProjectFramwork
//
//  Created by 赵广亮 on 2019/6/18.
//  Copyright © 2019年 ZhaoGuangLiang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "TestPresenterProtocol.h"

NS_ASSUME_NONNULL_BEGIN
typedef void(^Block)(void);

@interface TestPresenter : NSObject<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic,copy) Block dataSuccessBlock;
-(void)loadDataWithSuccessblock:(Block)successBlock;
-(void)bindTableView:(UITableView*)testTableView control:(id<TestPresenterProtocol>)control;
@end

NS_ASSUME_NONNULL_END
