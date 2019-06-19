//
//  TestViewController.m
//  TestProjectFramwork
//
//  Created by 赵广亮 on 2019/6/17.
//  Copyright © 2019年 ZhaoGuangLiang. All rights reserved.
//

#import "TestViewController.h"
#import "TestPresenter.h"
#import "TestPresenterProtocol.h"

@interface TestViewController ()<TestPresenterProtocol>
@property (nonatomic,strong) TestPresenter *presenter;
@property (nonatomic,strong) UITableView *testTableView;
@property (nonatomic, strong) UIActivityIndicatorView *indicatorView;
@end

@implementation TestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor cyanColor];
    
    __weak typeof(self) weakSelf = self;
    [self.presenter bindTableView:self.testTableView control:self];
    [self.view addSubview:self.testTableView];
    [self.view addSubview:self.indicatorView];
    
    //调用presenter加载数据的方法模拟数据加载
    [self.presenter loadDataWithSuccessblock:^() {
        [weakSelf.testTableView reloadData];
    }];
}

#pragma mark 实现协议方法
- (void)showLoadingTip {
    [self.indicatorView startAnimating];
    self.indicatorView.hidden = NO;
}

- (void)hideLoadingTip {
    [self.indicatorView stopAnimating];
}

#pragma mark 懒加载
-(UITableView *)testTableView{
    if (!_testTableView) {
        _testTableView = [[UITableView alloc] initWithFrame:CGRectMake(0,20,[UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height - 20) style:UITableViewStylePlain];
        [_testTableView registerNib:[UINib nibWithNibName:@"TestCell" bundle:[NSBundle mainBundle]] forCellReuseIdentifier:@"TestCell"];
    }
    return _testTableView;
}

-(TestPresenter *)presenter{
    if (!_presenter) {
        _presenter = [[TestPresenter alloc] init];
    }
    return _presenter;
}

- (UIActivityIndicatorView *)indicatorView {
    if (!_indicatorView) {
        _indicatorView = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
        _indicatorView.center = self.view.center;
        _indicatorView.hidesWhenStopped = YES;
    }
    return _indicatorView;
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
