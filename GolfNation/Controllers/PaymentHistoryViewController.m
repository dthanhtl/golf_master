//
//  PaymentHistoryViewController.m
//  GolfNation
//
//  Created by Thanh Tran on 5/26/15.
//  Copyright (c) 2015 Giang Tran. All rights reserved.
//

#import "PaymentHistoryViewController.h"
#import "PaymentHistoryCell.h"

@interface PaymentHistoryViewController ()

@end

@implementation PaymentHistoryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initLayout];
    [self showMenuButton];
    //init navi menu
    // Do any additional setup after loading the view from its nib.
}

-(void)initLayout{
    
    
    self.btnLocal.layer.cornerRadius = self.btnSeeAll.layer.cornerRadius = 20.0f;

    self.btnLocal.clipsToBounds = self.btnSeeAll.clipsToBounds =  YES;
    
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -- table
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *CellIdentifier = @"paymentcell";
    
    PaymentHistoryCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        [tableView registerNib:[UINib nibWithNibName:@"PaymentHistoryCell" bundle:nil] forCellReuseIdentifier:CellIdentifier];
        cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    }
    
    cell.backgroundColor = [UIColor clearColor];
    
    //    NSInteger section = [indexPath section];
    //
    //    switch (section) {
    //        case 0: // First cell in section 1
    //            cell.textLabel.text = [collectionHelpTitles objectAtIndex:[indexPath row]];
    //            break;
    //        case 1: // Second cell in section 1
    //            cell.textLabel.text = [noteHelpTitles objectAtIndex:[indexPath row]];
    //            break;
    //        case 2: // Third cell in section 1
    //            cell.textLabel.text = [checklistHelpTitles objectAtIndex:[indexPath row]];
    //            break;
    //        case 3: // Fourth cell in section 1
    //            cell.textLabel.text = [photoHelpTitles objectAtIndex:[indexPath row]];
    //            break;
    //        default:
    //            // Do something else here if a cell other than 1,2,3 or 4 is requested
    //            break;
    //    }
    
    cell.lblOrderNo.text = @"ORNO25";
    cell.lblDateCreated.text = @"04-03-2015";
    cell.lblTime.text = @"06:09 PM";
    cell.lblTotalAmount.text = @"$6969";
    cell.lblStatus.text = @"Done";
    return cell;
}

- (void)tableView:(UITableView *)tableView  willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
    [cell setBackgroundColor:[UIColor clearColor]];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 150.0f;
}
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    
    return 0.0001f;
}
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    
    return 0.0001f;
}


@end
