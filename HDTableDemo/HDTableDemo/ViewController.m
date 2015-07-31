//
//  ViewController.m
//  HDTableDemo
//
//  Created by 李远超 on 15/7/24.
//  Copyright (c) 2015年 xiaoyezi. All rights reserved.
//

#import "ViewController.h"
#import "HDTableView.h"

@interface ViewController () <HDTableViewDelegate, HDTableViewDataSource>

@property (nonatomic, strong) HDTableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView = [[HDTableView alloc] initWithFrame:CGRectZero style:UITableViewStylePlain];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.tableView.backgroundColor = [UIColor redColor];
    self.tableView.selectedFlagView.hidden = NO;
    [self.view addSubview:self.tableView];
}

- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    self.tableView.frame = CGRectMake(10, 100, self.view.frame.size.width - 20, 44);
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    [self.tableView scrollToRowAtIndexPath:[HDIndexPath indexPathForColumn:0 inSection:3] atScrollPosition:0 animated:YES];
    [self.tableView selectRowAtIndexPath:[HDIndexPath indexPathForColumn:0 inSection:3] animated:YES scrollPosition:0];
}

#pragma mark - HDTableViewDelegate

- (void)tableView:(HDTableView *)tableView didSelectColumnAtIndexPath:(HDIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

//- (NSInteger)tableView:(HDTableView *)tableView widthForHeaderInSection:(NSInteger)section {
//    return 5;
//}

- (NSInteger)tableView:(HDTableView *)tableView widthForFooterInSection:(NSInteger)section {
    if (section != 9) {
        return 5;
    }
    return 0;
}

- (NSInteger)tableView:(HDTableView *)tableView heightForSelectedFlagAtIndexPath:(HDIndexPath *)indexPath {
    return 2;
}

- (UIView *)tableView:(HDTableView *)tableView viewForHeaderInSection:(NSInteger)section reuseableHeader:(UIView *)header {
    if (header == nil) {
        header = [[UIView alloc] initWithFrame:CGRectZero];
        header.backgroundColor = [UIColor yellowColor];
    }
    return header;
}

- (UIView *)tableView:(HDTableView *)tableView viewForFooterInSection:(NSInteger)section reuseableFooter:(UIView *)footer {
    if (footer == nil) {
        footer = [[UIView alloc] initWithFrame:CGRectZero];
        footer.backgroundColor = [UIColor orangeColor];
    }
    return footer;
}


#pragma mark - HDTableViewDataSource

- (NSInteger)numberOfSectionsInTableView:(HDTableView *)tableView {
    return 10;
}

- (NSInteger)tableView:(HDTableView *)tableView numberOfColumnsInSection:(NSInteger)section {
    return 1;
}

- (HDTableCell *)tableView:(HDTableView *)tableView cellForColumnAtIndexPath:(HDIndexPath *)indexPath reuseableCell:(HDTableCell *)cell {
    if (cell == nil) {
        cell = [[HDTableCell alloc] initWithFrame:CGRectZero];
        cell.textLabel.textColor = [UIColor greenColor];
        cell.textLabel.highlightedTextColor = [UIColor purpleColor];
    }
    cell.imageView.image = [UIImage imageNamed:@"icon"];
    cell.textLabel.text = [NSString stringWithFormat:@"title - %li", indexPath.section];
    return cell;
}



@end
