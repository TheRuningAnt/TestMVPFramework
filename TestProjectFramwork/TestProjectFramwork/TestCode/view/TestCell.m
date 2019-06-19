//
//  TestCell.m
//  TestProjectFramwork
//
//  Created by 赵广亮 on 2019/6/17.
//  Copyright © 2019年 ZhaoGuangLiang. All rights reserved.
//

#import "TestCell.h"
@implementation TestCell
- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (IBAction)lickAddBtn:(id)sender {
    if ([self.delegate respondsToSelector:@selector(clickAddBtnWithIndex:)]) {
        [self.delegate clickAddBtnWithIndex:self.indexPath];
    }
}

- (IBAction)clickReduceBtn:(id)sender {
    if ([self.delegate respondsToSelector:@selector(clickReduceBtnWithIndex:)]) {
        [self.delegate clickReduceBtnWithIndex:self.indexPath];
    }
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
