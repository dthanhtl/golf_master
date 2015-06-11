//
//  ListGamesManageTableViewCell.m
//  GolfNation
//
//  Created by Thanh Tran on 5/22/15.
//  Copyright (c) 2015 Giang Tran. All rights reserved.
//

#import "ListGamesManageTableViewCell.h"
#import <QuartzCore/QuartzCore.h>

@implementation ListGamesManageTableViewCell

- (void)awakeFromNib {
    // Initialization code
    
    self.btnManage.layer.borderWidth = 1.0f;
    self.btnManage.layer.borderColor = [UIColor colorWithRed:35.0f/255.0f green:204.0f/255.0f blue:252.0f/255.0f alpha:1.0f].CGColor;
//    self.btnManage.layer.borderColor = [UIColor redColor].CGColor;

    self.btnManage.layer.cornerRadius = 12.0f;
    
    self.btnManage.clipsToBounds = YES;
    
//    self.btnManage.backgroundColor = [UIColor clearColor];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
