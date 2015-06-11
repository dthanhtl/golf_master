//
//  PaymentHistoryCell.h
//  GolfNation
//
//  Created by Thanh Tran on 5/26/15.
//  Copyright (c) 2015 Giang Tran. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PaymentHistoryCell : UITableViewCell
{

}
@property (weak, nonatomic) IBOutlet UILabel *lblOrderNo;
@property (weak, nonatomic) IBOutlet UILabel *lblDateCreated;

@property (weak, nonatomic) IBOutlet UILabel *lblTime;
@property (weak, nonatomic) IBOutlet UILabel *lblTotalAmount;
@property (weak, nonatomic) IBOutlet UILabel *lblStatus;

@end
