//
//  BillingViewController.h
//  GolfNation
//
//  Created by Thanh Tran on 5/22/15.
//  Copyright (c) 2015 Giang Tran. All rights reserved.
//

#import "GNViewController.h"

@interface BillingViewController : GNViewController{

}

@property (weak, nonatomic) IBOutlet UITextField *tfNam;
@property (weak, nonatomic) IBOutlet UITextField *tfEmail;

@property (weak, nonatomic) IBOutlet UIButton *btnLogin;
@property (weak, nonatomic) IBOutlet UIButton *btnEdit;
@property (weak, nonatomic) IBOutlet UIButton *btnSave;

@end
