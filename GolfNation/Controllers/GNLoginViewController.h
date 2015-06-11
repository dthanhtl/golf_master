//
//  GNLoginViewController.h
//  GolfNation
//
//  Created by Giang Tran on 5/11/15.
//  Copyright (c) 2015 Giang Tran. All rights reserved.
//

#import "GNViewController.h"

@interface GNLoginViewController : GNViewController{

}

@property (weak, nonatomic) IBOutlet UIButton *btnTemp;


@property (weak, nonatomic) IBOutlet UITextField *tfUsername;
@property (weak, nonatomic) IBOutlet UITextField *tfPassword;


@property (weak, nonatomic) IBOutlet UIView *fbVIew;
@property (weak, nonatomic) IBOutlet UIView *twitterView;
@property (weak, nonatomic) IBOutlet UIView *instaView;

@property (weak, nonatomic) IBOutlet UIButton *btnFacebook;
@property (weak, nonatomic) IBOutlet UIButton *btnTwitter;
@property (weak, nonatomic) IBOutlet UIButton *btnInstagram;


@property (weak, nonatomic) IBOutlet UIButton *btnLogin;


@end
