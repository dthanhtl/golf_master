//
//  MyGameViewController.m
//  GolfNation
//
//  Created by Giang on 5/25/15.
//  Copyright (c) 2015 Giang Tran. All rights reserved.
//

#import "MyGameViewController.h"
#import "GNNavigationController.h"
#import "ListGamesTableViewCell.h"
#import "GameViewController.h"

@interface MyGameViewController ()

@end

@implementation MyGameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self showMenuButton];
    //init navi menu
    // Do any additional setup after loading the view from its nib.
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
    
    return 15;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *CellIdentifier = @"listgamecell";
    
    ListGamesTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        [tableView registerNib:[UINib nibWithNibName:@"ListGamesTableViewCell" bundle:nil] forCellReuseIdentifier:CellIdentifier];
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
    
    cell.lblTitle.text = @"Lake lake";
    cell.lblPrice.text = @"$500";
    return cell;
}

- (void)tableView:(UITableView *)tableView  willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
    [cell setBackgroundColor:[UIColor clearColor]];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 48.0f;
}
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    
    return 0.0001f;
}
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    
    return 0.0001f;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{

    GameViewController *gameVC = [GameViewController new];
    [self.navigationController pushViewController:gameVC animated:YES];
}


@end
