//
//  AutoRechargeViewController.h
//  GolfNation
//
//  Created by Thanh Tran on 5/22/15.
//  Copyright (c) 2015 Giang Tran. All rights reserved.
//

#import "GNViewController.h"

@interface AutoRechargeViewController : GNViewController{

}


@property (weak, nonatomic) IBOutlet UITextField *tfMoney;
@property (weak, nonatomic) IBOutlet UITextField *tfEmail;
@property (weak, nonatomic) IBOutlet UITextField *tfCC;
@property (weak, nonatomic) IBOutlet UITextField *tfExpire;
@property (weak, nonatomic) IBOutlet UITextField *tfSecu;

@property (weak, nonatomic) IBOutlet UIButton *btnSave;


@end
