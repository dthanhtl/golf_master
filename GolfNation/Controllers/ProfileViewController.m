//
//  ProfileViewController.m
//  GolfNation
//
//  Created by Thanh Tran on 6/1/15.
//  Copyright (c) 2015 Giang Tran. All rights reserved.
//

#import "ProfileViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface ProfileViewController ()

@end

@implementation ProfileViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.avatar.layer.cornerRadius = 60.0f;
    self.avatar.clipsToBounds = YES;
    
    self.halo.backgroundColor = [UIColor clearColor];
    
    self.halo.layer.borderColor = [UIColor colorWithRed:35.0f/255.0f green:204.0f/255.0f blue:252.0f/255.0f alpha:1.0f].CGColor;
    self.halo.layer.borderWidth = 2.0f;
    
    self.halo.layer.cornerRadius = 65.0f;
    self.halo.clipsToBounds = YES;
    
    [self showMenuButton];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
