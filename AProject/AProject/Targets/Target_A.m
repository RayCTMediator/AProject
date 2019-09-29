//
//  Target_A.m
//  AProject
//
//  Created by WKL on 2019/9/29.
//  Copyright © 2019 Ray. All rights reserved.
//

#import "Target_A.h"
#import "AViewController.h"


@implementation Target_A

- (UIViewController *)Action_viewController:(NSDictionary *)params
{
    AViewController *viewController = [[AViewController alloc] init];
    return viewController;
}


@end
