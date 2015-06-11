//
//  AppDelegate.h
//  GolfNation
//
//  Created by Giang Tran on 5/10/15.
//  Copyright (c) 2015 Giang Tran. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "REFrostedViewController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate, REFrostedViewControllerDelegate>

@property (strong, nonatomic) UIWindow *window;

+(AppDelegate *)sharedAppDelegate;
- (void)doLogin;
@end

