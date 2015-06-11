//
//  ListGamesViewController.h
//  GolfNation
//
//  Created by Thanh Tran on 5/22/15.
//  Copyright (c) 2015 Giang Tran. All rights reserved.
//

#import "GNViewController.h"

@interface ListGamesViewController : GNViewController<UITableViewDataSource,UITableViewDelegate>{

}

@property (weak, nonatomic) IBOutlet UITableView *tableView;


@end
