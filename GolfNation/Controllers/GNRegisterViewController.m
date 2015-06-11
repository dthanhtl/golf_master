//
//  GNRegisterViewController.m
//  GolfNation
//
//  Created by Thanh Tran on 5/19/15.
//  Copyright (c) 2015 Giang Tran. All rights reserved.
//

#import "GNRegisterViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface GNRegisterViewController (){

}

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *topSpacing;


@end

@implementation GNRegisterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self initLayout];
}

-(void)initLayout{
    
    
    self.tfEmail.layer.cornerRadius = self.tfPassword.layer.cornerRadius = self.btnRegister.layer.cornerRadius =  20.0f;
    self.tfEmail.backgroundColor = self.tfPassword.backgroundColor =  [UIColor colorWithRed:51.0f/255.0f green:51.0f/255.0f blue:51.0f/255.0f alpha:1.0f];
    self.tfEmail.layer.sublayerTransform = self.tfPassword.layer.sublayerTransform = CATransform3DMakeTranslation(10, 0, 0);
    
    
    NSAttributedString *str = [[NSAttributedString alloc] initWithString:@"Username" attributes:@{ NSForegroundColorAttributeName : [UIColor whiteColor] }];
    self.tfEmail.attributedPlaceholder = str;
    
    NSAttributedString *str1 = [[NSAttributedString alloc] initWithString:@"Password" attributes:@{ NSForegroundColorAttributeName : [UIColor whiteColor] }];
    self.tfPassword.attributedPlaceholder = str1;

    self.tfEmail.clipsToBounds = self.tfPassword.clipsToBounds = self.btnRegister.clipsToBounds = YES;
    
    if (IS_IPHONE_6) {
        self.topSpacing.constant = 90.0f;
        [self.view updateConstraints];
    }else if (IS_IPHONE_6P){
        self.topSpacing.constant = 100.0f;
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

#pragma navigate

- (IBAction)backTapped:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:^{
        
    }];
}


@end
