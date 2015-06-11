//
//  GNLoginViewController.m
//  GolfNation
//
//  Created by Giang Tran on 5/11/15.
//  Copyright (c) 2015 Giang Tran. All rights reserved.
//

#import "GNLoginViewController.h"
#import "GNRegisterViewController.h"
#import "ListGamesViewController.h"
#import <QuartzCore/QuartzCore.h>
#import "GameViewController.h"
#import "AppDelegate.h"

@interface GNLoginViewController (){
}


@property (weak, nonatomic) IBOutlet NSLayoutConstraint *topSpacing;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *loginSpacing;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *loginSocialSpacing;


@end

@implementation GNLoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.

    [self initLayout];
}

-(void)initLayout{

    
    self.tfUsername.layer.cornerRadius = self.tfPassword.layer.cornerRadius = self.btnLogin.layer.cornerRadius =  20.0f;
    self.tfUsername.backgroundColor = self.tfPassword.backgroundColor =  [UIColor colorWithRed:51.0f/255.0f green:51.0f/255.0f blue:51.0f/255.0f alpha:1.0f];
    self.tfUsername.layer.sublayerTransform = self.tfPassword.layer.sublayerTransform = CATransform3DMakeTranslation(10, 0, 0);

    
    NSAttributedString *str = [[NSAttributedString alloc] initWithString:@"Username" attributes:@{ NSForegroundColorAttributeName : [UIColor whiteColor] }];
    self.tfUsername.attributedPlaceholder = str;
    
    NSAttributedString *str1 = [[NSAttributedString alloc] initWithString:@"Password" attributes:@{ NSForegroundColorAttributeName : [UIColor whiteColor] }];
    self.tfPassword.attributedPlaceholder = str1;
    self.tfPassword.layer.sublayerTransform = CATransform3DMakeTranslation(10, 0, 0);
    
    self.fbVIew.layer.cornerRadius = self.twitterView.layer.cornerRadius = self.instaView.layer.cornerRadius = self.btnFacebook.layer.cornerRadius = self.btnInstagram.layer.cornerRadius = self.btnTwitter.layer.cornerRadius = 4.0f;
    self.fbVIew.clipsToBounds = self.twitterView.clipsToBounds = self.instaView.clipsToBounds = self.btnTwitter.clipsToBounds = self.btnFacebook.clipsToBounds = self.btnInstagram.clipsToBounds = self.tfPassword.clipsToBounds = self.tfUsername.clipsToBounds = self.btnLogin.clipsToBounds =  YES;

    
    
    if (IS_IPHONE_6) {
        self.topSpacing.constant = 90.0f;
        self.loginSocialSpacing.constant = 30.0f;
        [self.view updateConstraints];
    }else if (IS_IPHONE_6P){
        self.topSpacing.constant = 100.0f;
        self.loginSpacing.constant = 50.0f;
        self.loginSocialSpacing.constant = 40.0f;
        [self.view updateConstraints];

    }
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

#pragma navigation

- (IBAction)goToRegister:(id)sender {
    
    GNRegisterViewController *registerVC = [[GNRegisterViewController alloc] initWithNibName:@"GNRegisterViewController" bundle:nil];
    [self presentViewController:registerVC animated:YES completion:^{
        
    }];
    
//    GameViewController *registerVC = [[GameViewController alloc] initWithNibName:@"GameViewController" bundle:nil];
//    [self presentViewController:registerVC animated:YES completion:^{
//        
//    }];
}


- (IBAction)loginTapped:(id)sender {
    
    [[AppDelegate sharedAppDelegate] doLogin];
}


@end
