//
//  CreateGameViewController.h
//  GolfNation
//
//  Created by Thanh Tran on 5/26/15.
//  Copyright (c) 2015 Giang Tran. All rights reserved.
//

#import "GNViewController.h"

@interface CreateGameViewController : GNViewController{

}

@property (weak, nonatomic) IBOutlet UITextField *tfTitle;

@property (weak, nonatomic) IBOutlet UITextField *tfCourse;
@property (weak, nonatomic) IBOutlet UITextField *tfDate;

@property (weak, nonatomic) IBOutlet UITextField *tfTime;
@property (weak, nonatomic) IBOutlet UITextField *tfType;

@property (weak, nonatomic) IBOutlet UITextField *tfCost;

@property (weak, nonatomic) IBOutlet UITextField *details;


@property (weak, nonatomic) IBOutlet UIButton *btnGo;

@end
