//
//  CreateGameViewController.m
//  GolfNation
//
//  Created by Thanh Tran on 5/26/15.
//  Copyright (c) 2015 Giang Tran. All rights reserved.
//

#import "CreateGameViewController.h"

@interface CreateGameViewController ()

@end

@implementation CreateGameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self showMenuButton];
    [self initLayout];
}

-(void)initLayout{
    
    
    self.tfCost.layer.cornerRadius = self.tfCourse.layer.cornerRadius = self.tfDate.layer.cornerRadius = self.tfTime.layer.cornerRadius = self.tfTitle.layer.cornerRadius = self.details.layer.cornerRadius = self.tfType.layer.cornerRadius = self.btnGo.layer.cornerRadius =  20.0f;
    self.tfCost.backgroundColor = self.tfCourse.backgroundColor = self.tfDate.backgroundColor = self.tfTime.backgroundColor = self.tfTitle.backgroundColor = self.tfType.backgroundColor = self.details.backgroundColor = [UIColor colorWithRed:51.0f/255.0f green:51.0f/255.0f blue:51.0f/255.0f alpha:1.0f];
    self.tfCourse.layer.sublayerTransform = self.tfCost.layer.sublayerTransform = self.tfDate.layer.sublayerTransform = self.tfTime.layer.sublayerTransform = self.tfTitle.layer.sublayerTransform = self.tfType.layer.sublayerTransform =  self.details.layer.sublayerTransform =CATransform3DMakeTranslation(10, 0, 0);
    
    
    NSAttributedString *str = [[NSAttributedString alloc] initWithString:@"Golf Title" attributes:@{ NSForegroundColorAttributeName : [UIColor whiteColor] }];
    self.tfTitle.attributedPlaceholder = str;
    
    NSAttributedString *str1 = [[NSAttributedString alloc] initWithString:@"Golf Course" attributes:@{ NSForegroundColorAttributeName : [UIColor whiteColor] }];
    self.tfCourse.attributedPlaceholder = str1;
    
    NSAttributedString *str2 = [[NSAttributedString alloc] initWithString:@"Date" attributes:@{ NSForegroundColorAttributeName : [UIColor whiteColor] }];
    self.tfDate.attributedPlaceholder = str2;
    
    NSAttributedString *str3 = [[NSAttributedString alloc] initWithString:@"Time" attributes:@{ NSForegroundColorAttributeName : [UIColor whiteColor] }];
    self.tfTime.attributedPlaceholder = str3;
    
    NSAttributedString *str4 = [[NSAttributedString alloc] initWithString:@"Game Type" attributes:@{ NSForegroundColorAttributeName : [UIColor whiteColor] }];
    self.tfType.attributedPlaceholder = str4;
    
    NSAttributedString *str5 = [[NSAttributedString alloc] initWithString:@"Cost" attributes:@{ NSForegroundColorAttributeName : [UIColor whiteColor] }];
    self.tfCost.attributedPlaceholder = str5;
    
    NSAttributedString *str6 = [[NSAttributedString alloc] initWithString:@"Additional Details" attributes:@{ NSForegroundColorAttributeName : [UIColor whiteColor] }];
    self.details.attributedPlaceholder = str6;
    
    
    
    self.tfCost.clipsToBounds = self.tfCourse.clipsToBounds = self.tfDate.clipsToBounds =
    self.tfTime.clipsToBounds = self.tfTitle.clipsToBounds = self.tfType.clipsToBounds = self.details.clipsToBounds = self.btnGo.clipsToBounds = YES;
    
    
    
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
