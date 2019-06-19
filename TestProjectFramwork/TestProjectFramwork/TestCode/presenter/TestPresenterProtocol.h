//
//  TestPresenterProtocol.h
//  TestProjectFramwork
//
//  Created by 赵广亮 on 2019/6/17.
//  Copyright © 2019年 ZhaoGuangLiang. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol TestPresenterProtocol <NSObject>

@optional
-(void)clickAddBtnWithIndex:(NSIndexPath*)indexPath;
-(void)clickReduceBtnWithIndex:(NSIndexPath*)indexPath;
-(void)showLoadingTip;
-(void)hideLoadingTip;
@end

NS_ASSUME_NONNULL_END
