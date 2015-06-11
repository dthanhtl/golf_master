//
//  GNNavigationController.m
//  GolfNation
//
//  Created by Giang on 5/25/15.
//  Copyright (c) 2015 Giang Tran. All rights reserved.
//

#import "GNNavigationController.h"
#import "UIViewController+REFrostedViewController.h"

@interface GNNavigationController ()

@end

@implementation GNNavigationController

- (void)viewDidLoad
{//270 42
    [super viewDidLoad];
    
}

-(void)viewWillAppear:(BOOL)animated{
    [[UINavigationBar appearance] setBarTintColor:[UIColor colorWithRed:68/255.0 green:68/255.0f blue:68/255.0f alpha:1.0f]];
    [self.view addGestureRecognizer:[[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(panGestureRecognized:)]];
    //set up view
    UIImageView *imgBanner = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 180, 28)];
    [imgBanner setImage:[UIImage imageNamed:@"Top_banner.png"]];
    [imgBanner setCenter:CGPointMake([UIScreen mainScreen].bounds.size.width/2, 22)];
    [imgBanner setContentMode:UIViewContentModeScaleAspectFit];
    [self.navigationBar addSubview:imgBanner];
}

- (void)showMenu
{
    // Dismiss keyboard (optional)
    //
    [self.view endEditing:YES];
    [self.frostedViewController.view endEditing:YES];
    
    // Present the view controller
    //
    [self.frostedViewController presentMenuViewController];
}

- (void)showMenuButton{
}

#pragma mark -
#pragma mark Gesture recognizer

- (void)panGestureRecognized:(UIPanGestureRecognizer *)sender
{
    // Dismiss keyboard (optional)
    //
    [self.view endEditing:YES];
    [self.frostedViewController.view endEditing:YES];
    
    // Present the view controller
    //
    [self.frostedViewController panGestureRecognized:sender];
}

@end
