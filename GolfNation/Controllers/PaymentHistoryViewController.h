//
//  PaymentHistoryViewController.h
//  GolfNation
//
//  Created by Thanh Tran on 5/26/15.
//  Copyright (c) 2015 Giang Tran. All rights reserved.
//

#import "GNViewController.h"

@interface PaymentHistoryViewController : GNViewController<UITableViewDataSource,UITableViewDelegate>{

}


@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UIButton *btnLocal;
@property (weak, nonatomic) IBOutlet UIButton *btnSeeAll;

@end
