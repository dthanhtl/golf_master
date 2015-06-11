//
//  MenuViewController.m
//  GolfNation
//
//  Created by Giang on 5/25/15.
//  Copyright (c) 2015 Giang Tran. All rights reserved.
//

#import "MenuViewController.h"
#import "MyGameViewController.h"
#import "GNNavigationController.h"
#import "UIViewController+REFrostedViewController.h"
#import "BillingViewController.h"
#import "ManageGamesViewController.h"
#import "ListGamesViewController.h"
#import "CreateGameViewController.h"
#import "PaymentHistoryViewController.h"
#import "ProfileViewController.h"
#import "MenuTableViewCell.h"

@interface MenuViewController ()

@end

@implementation MenuViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.tableView.opaque = YES;
    self.tableView.backgroundColor = [UIColor clearColor];
    self.view.backgroundColor = [UIColor colorWithRed:53.0f/255.0f green:53.0f/255.0f blue:53.0f/255.0f alpha:1.0f];
    
    [self.tableView setContentSize:CGSizeMake(self.tableView.frame.size.width, 480.0f)];
    self.tableView.frame = CGRectMake(self.tableView.frame.origin.x, self.tableView.frame.origin.y, self.tableView.frame.size.width, 300.0f);
    
//    [self.view addSubview:self.ta]
//    self.tableView.backgroundView.backgroundColor = [UIColor clearColor];
;
//    self.tableView.tableHeaderView = ({
//        UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 0, 184.0f)];
//        UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 40, 100, 100)];
//        imageView.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin;
//        imageView.image = [UIImage imageNamed:@"avatar.jpg"];
//        imageView.layer.masksToBounds = YES;
//        imageView.layer.cornerRadius = 50.0;
//        imageView.layer.borderColor = [UIColor whiteColor].CGColor;
//        imageView.layer.borderWidth = 3.0f;
//        imageView.layer.rasterizationScale = [UIScreen mainScreen].scale;
//        imageView.layer.shouldRasterize = YES;
//        imageView.clipsToBounds = YES;
//        
//        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 150, 0, 24)];
//        label.text = @"Roman Efimov";
//        label.font = [UIFont fontWithName:@"HelveticaNeue" size:21];
//        label.backgroundColor = [UIColor clearColor];
//        label.textColor = [UIColor colorWithRed:62/255.0f green:68/255.0f blue:75/255.0f alpha:1.0f];
//        [label sizeToFit];
//        label.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin;
//        
//        [view addSubview:imageView];
//        [view addSubview:label];
//        view;
//    });
}

#pragma mark -
#pragma mark UITableView Delegate

- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
    cell.backgroundColor = [UIColor clearColor];
    cell.textLabel.textColor = [UIColor whiteColor];
    cell.textLabel.font = [UIFont fontWithName:@"HelveticaNeue" size:17];
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)sectionIndex
{
    
    UIView *topView = [[UIView alloc] init];
    topView.backgroundColor  = [UIColor colorWithRed:53.0f/255.0f green:53.0f/255.0f blue:53.0f/255.0f alpha:1.0f];
    
    UIImageView *menu = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"ic_menu.png"]];
    [menu setFrame:CGRectMake(0, 0, 18, 18)];
    [menu setContentMode:UIViewContentModeScaleAspectFill];
    
    UIImage *img1=[UIImage imageNamed:@"btn_close_small.png"];
    CGRect frameimg1 = CGRectMake(0, 0, 22, 20);
    UIButton *signOut=[[UIButton alloc]initWithFrame:frameimg1];
    [signOut setBackgroundImage:img1 forState:UIControlStateNormal];
    [signOut addTarget:self action:@selector(closeMenu)
      forControlEvents:UIControlEventTouchUpInside];
    
    [topView addSubview:menu];
    [topView addSubview:signOut];
    
    menu.center = CGPointMake(24, topView.center.y + 32);
    signOut.center = CGPointMake(tableView.frame.size.width - 20, menu.center.y);
    
    return topView;
}

-(void)closeMenu{

    [self.frostedViewController hideMenuViewController];
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)sectionIndex
{
    return 54;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    switch (indexPath.row) {
        case 0:
        {
            MyGameViewController *myGameVC = [[MyGameViewController alloc] init];
            GNNavigationController *navigationController = [[GNNavigationController alloc] initWithRootViewController:myGameVC];
            self.frostedViewController.contentViewController = navigationController;
        }
            break;
        case 1:
        {
            ManageGamesViewController *myGameVC = [[ManageGamesViewController alloc] init];
            GNNavigationController *navigationController = [[GNNavigationController alloc] initWithRootViewController:myGameVC];
            self.frostedViewController.contentViewController = navigationController;
        }
            break;
        case 2:
        {
            CreateGameViewController *myGameVC = [[CreateGameViewController alloc] init];
            GNNavigationController *navigationController = [[GNNavigationController alloc] initWithRootViewController:myGameVC];
            self.frostedViewController.contentViewController = navigationController;
        }
            break;
        case 3:
        {
            BillingViewController *billingVC = [[BillingViewController alloc] init];
            GNNavigationController *navigationController = [[GNNavigationController alloc] initWithRootViewController:billingVC];
            self.frostedViewController.contentViewController = navigationController;
        }
            break;
        case 4:
        {
            PaymentHistoryViewController *billingVC = [[PaymentHistoryViewController alloc] init];
            GNNavigationController *navigationController = [[GNNavigationController alloc] initWithRootViewController:billingVC];
            self.frostedViewController.contentViewController = navigationController;
        }
            break;
        case 5:
        {
            ProfileViewController *billingVC = [[ProfileViewController alloc] init];
            GNNavigationController *navigationController = [[GNNavigationController alloc] initWithRootViewController:billingVC];
            self.frostedViewController.contentViewController = navigationController;
        }
            break;
        default:
            break;
    }

    
    [self.frostedViewController hideMenuViewController];
}

#pragma mark -
#pragma mark UITableView Datasource

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 80.0f;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)sectionIndex
{
    return 6;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"menutablecell";
    
    MenuTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        [tableView registerNib:[UINib nibWithNibName:@"MenuTableViewCell" bundle:nil] forCellReuseIdentifier:CellIdentifier];
        cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    }
    
    cell.backgroundColor = [UIColor clearColor];
    
    NSArray *titles = @[@"Find Game", @"Manage Game", @"Create Game",@"Manage Payment",@"Payment History",@"My Profile"];
    NSArray *icons = @[@"ic_search.png",@"ic_manage.png",@"ic_create.png",@"ic_manage.png",@"ic_payment.png",@""];
    
    cell.lblTitle.text = titles[indexPath.row];
    cell.iv_icon.image = [UIImage imageNamed:icons[indexPath.row]];
    
    cell.backgroundColor = [UIColor clearColor];
    
    return cell;
}





/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
