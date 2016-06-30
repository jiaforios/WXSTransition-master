//
//  UINavigationController+WXSTransition.m
//  WXSTransition
//
//  Created by 王小树 on 16/6/3.
//  Copyright © 2016年 王小树. All rights reserved.
//

#import "UINavigationController+WXSTransition.h"

@implementation UINavigationController (WXSTransition)
#pragma mark Action Method

-(void)wxs_pushViewController:(UIViewController *)viewController {
    
    [self wxs_pushViewController:viewController makeTransition:nil];
 
}

-(void)wxs_pushViewController:(UIViewController *)viewController animationType:(WXSTransitionAnimationType) animationType{
    
    [self wxs_pushViewController:viewController makeTransition:^(WXSTransitionManager *transition) {
        transition.animationType = animationType;
    }];
    
}


-(void)wxs_pushViewController:(UIViewController *)viewController makeTransition:(WXSTransitionBlock) transitionBlock {
    
    self.delegate = viewController;
    viewController.callBackTransition = transitionBlock ? transitionBlock : nil;
    [self pushViewController:viewController animated:YES];
    
}





@end
