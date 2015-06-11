//
//  GNViewController.m
//  GolfNation
//
//  Created by Giang Tran on 5/11/15.
//  Copyright (c) 2015 Giang Tran. All rights reserved.
//

#import "GNViewController.h"
#import "GNNavigationController.h"

@interface GNViewController ()

@end

@implementation GNViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)showMenuButton{
    
//    
//    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Menu"
//                                                                             style:UIBarButtonItemStylePlain
//                                                                            target:(GNNavigationController *)self.navigationController
//                                                                            action:@selector(showMenu)];
    
    self.navigationItem.leftBarButtonItem=[[UIBarButtonItem alloc]init];
    
    UIImage *img1=[UIImage imageNamed:@"ic_menu.png"];
    CGRect frameimg1 = CGRectMake(0, 0, 22, 20);
    UIButton *signOut=[[UIButton alloc]initWithFrame:frameimg1];
    [signOut setBackgroundImage:img1 forState:UIControlStateNormal];
    [signOut addTarget:(GNNavigationController *)self.navigationController action:@selector(showMenu)
      forControlEvents:UIControlEventTouchUpInside];
    [signOut setShowsTouchWhenHighlighted:YES];
    
    UIBarButtonItem *barButton=[[UIBarButtonItem alloc]initWithCustomView:signOut];
    self.navigationItem.leftBarButtonItem=barButton;
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
