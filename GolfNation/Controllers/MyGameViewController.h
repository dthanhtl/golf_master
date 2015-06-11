//
//  MyGameViewController.h
//  GolfNation
//
//  Created by Giang on 5/25/15.
//  Copyright (c) 2015 Giang Tran. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GNViewController.h"

@interface MyGameViewController : GNViewController<UITableViewDataSource, UITableViewDelegate>{
    
}
@property (weak, nonatomic) IBOutlet UITableView *tableView;


@end
