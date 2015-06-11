//
//  ListGamesViewController.m
//  GolfNation
//
//  Created by Thanh Tran on 5/22/15.
//  Copyright (c) 2015 Giang Tran. All rights reserved.
//

#import "ListGamesViewController.h"
#import "ListGamesTableViewCell.h"

@interface ListGamesViewController ()

@end

@implementation ListGamesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark -- table
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{

    return 10;
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



@end
