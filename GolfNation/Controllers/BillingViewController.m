//
//  BillingViewController.m
//  GolfNation
//
//  Created by Thanh Tran on 5/22/15.
//  Copyright (c) 2015 Giang Tran. All rights reserved.
//

#import "BillingViewController.h"

@interface BillingViewController ()

@end

@implementation BillingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self showMenuButton];
    [self initLayout];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)initLayout{
    
    
    self.tfNam.layer.cornerRadius = self.tfEmail.layer.cornerRadius = self.btnEdit.layer.cornerRadius = self.btnLogin.layer.cornerRadius = self.btnSave.layer.cornerRadius = 20.0f;
    self.tfNam.backgroundColor = self.tfEmail.backgroundColor =  [UIColor colorWithRed:51.0f/255.0f green:51.0f/255.0f blue:51.0f/255.0f alpha:1.0f];
    
    self.tfNam.layer.sublayerTransform = self.tfEmail.layer.sublayerTransform  = CATransform3DMakeTranslation(10, 0, 0);
    
    
    NSAttributedString *str = [[NSAttributedString alloc] initWithString:@"Adam Levinge" attributes:@{ NSForegroundColorAttributeName : [UIColor whiteColor] }];
    self.tfNam.attributedPlaceholder = str;
    
    NSAttributedString *str1 = [[NSAttributedString alloc] initWithString:@"adam@gmail.com" attributes:@{ NSForegroundColorAttributeName : [UIColor whiteColor] }];
    self.tfEmail.attributedPlaceholder = str1;
    
    
    
    self.tfNam.clipsToBounds = self.tfEmail.clipsToBounds = self.btnEdit.clipsToBounds = self.btnLogin.clipsToBounds = self.btnSave.clipsToBounds =  YES;
    
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
