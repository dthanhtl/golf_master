//
//  AutoRechargeViewController.m
//  GolfNation
//
//  Created by Thanh Tran on 5/22/15.
//  Copyright (c) 2015 Giang Tran. All rights reserved.
//

#import "AutoRechargeViewController.h"

@interface AutoRechargeViewController ()

@end

@implementation AutoRechargeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self initLayout];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)initLayout{
    
    
    self.tfCC.layer.cornerRadius = self.tfEmail.layer.cornerRadius = self.tfExpire.layer.cornerRadius = self.tfMoney.layer.cornerRadius = self.tfSecu.layer.cornerRadius = self.btnSave.layer.cornerRadius = 20.0f;
    self.tfCC.backgroundColor = self.tfEmail.backgroundColor = self.tfExpire.backgroundColor = self.tfMoney.backgroundColor = self.tfSecu.backgroundColor =  [UIColor colorWithRed:51.0f/255.0f green:51.0f/255.0f blue:51.0f/255.0f alpha:1.0f];
    
    self.tfCC.layer.sublayerTransform = self.tfEmail.layer.sublayerTransform = self.tfExpire.layer.sublayerTransform = self.tfMoney.layer.sublayerTransform = self.tfSecu.layer.sublayerTransform = CATransform3DMakeTranslation(10, 0, 0);
    
    
    NSAttributedString *str = [[NSAttributedString alloc] initWithString:@"Ex: $50" attributes:@{ NSForegroundColorAttributeName : [UIColor whiteColor] }];
    self.tfMoney.attributedPlaceholder = str;
    
    NSAttributedString *str1 = [[NSAttributedString alloc] initWithString:@"Email" attributes:@{ NSForegroundColorAttributeName : [UIColor whiteColor] }];
    self.tfEmail.attributedPlaceholder = str1;
    NSAttributedString *str2 = [[NSAttributedString alloc] initWithString:@"CC#" attributes:@{ NSForegroundColorAttributeName : [UIColor whiteColor] }];
    self.tfCC.attributedPlaceholder = str2;
    
    NSAttributedString *str3 = [[NSAttributedString alloc] initWithString:@"Expiration" attributes:@{ NSForegroundColorAttributeName : [UIColor whiteColor] }];
    self.tfExpire.attributedPlaceholder = str3;
    NSAttributedString *str4 = [[NSAttributedString alloc] initWithString:@"Security Code" attributes:@{ NSForegroundColorAttributeName : [UIColor whiteColor] }];
    self.tfSecu.attributedPlaceholder = str4;
    
    
    self.tfSecu.clipsToBounds = self.tfMoney.clipsToBounds = self.tfExpire.clipsToBounds = self.tfEmail.clipsToBounds = self.tfCC.clipsToBounds = self.btnSave.clipsToBounds =  YES;

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
