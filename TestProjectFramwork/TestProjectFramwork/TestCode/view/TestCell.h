//
//  TestCell.h
//  TestProjectFramwork
//
//  Created by 赵广亮 on 2019/6/17.
//  Copyright © 2019年 ZhaoGuangLiang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TestPresenterProtocol.h"

NS_ASSUME_NONNULL_BEGIN
@interface TestCell : UITableViewCell
@property (nonatomic,strong) id <TestPresenterProtocol> delegate;
@property (nonatomic,strong) NSIndexPath *indexPath;
@property (weak, nonatomic) IBOutlet UILabel *titleL;
@end

NS_ASSUME_NONNULL_END
