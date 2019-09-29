//
//  AViewController.m
//  KLCTMediator
//
//  Created by WKL on 2019/9/29.
//  Copyright © 2019 Ray. All rights reserved.
//

#import "AViewController.h"
#import "Masonry.h"
//#import "BViewController.h"
//#import <CTMediator+B.h>

@interface AViewController ()
@property (nonatomic, strong) UIButton *pushBViewControllerButton;

@end

@implementation AViewController

#pragma mark - life cycle
- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.pushBViewControllerButton];
}

- (void)viewWillLayoutSubviews
{
    [super viewWillLayoutSubviews];
    
    [self.pushBViewControllerButton sizeToFit];
    
    [self.pushBViewControllerButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self.view);
    }];
}

#pragma mark - event response
- (void)didTappedPushBViewControllerButton:(UIButton *)button
{
//    BViewController *viewController = [[BViewController alloc] initWithContentText:@"hello, world!"];
    
//    UIViewController *viewController = [[CTMediator sharedInstance] B_viewControllerWithContentText:@"hello, world!"];
//
//    [self.navigationController pushViewController:viewController animated:YES];
}

#pragma mark - getters and setters
- (UIButton *)pushBViewControllerButton
{
    if (_pushBViewControllerButton == nil) {
        _pushBViewControllerButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_pushBViewControllerButton setTitle:@"push B view controller" forState:UIControlStateNormal];
        [_pushBViewControllerButton setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        [_pushBViewControllerButton addTarget:self action:@selector(didTappedPushBViewControllerButton:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _pushBViewControllerButton;
}

@end
