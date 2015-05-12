//
//  ViewController.m
//  TestAutoLayoutTableViewCell
//
//  Created by Creu on 15/5/11.
//  Copyright (c) 2015年 YanW. All rights reserved.
//

#import "ViewController.h"

#import "AutoLayoutCell.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) AutoLayoutCell *heightCell;

@property (strong, nonatomic) NSArray *datas;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.datas = @[@"测试测试测试", @"测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试", @"测试测试测试"];
    [self.tableView registerNib:[UINib nibWithNibName:[AutoLayoutCell description] bundle:nil] forCellReuseIdentifier:[AutoLayoutCell description]];
    self.heightCell = [[UINib nibWithNibName:[AutoLayoutCell description] bundle:nil] instantiateWithOwner:self options:nil][0];
}

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.datas.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    AutoLayoutCell *cell = [tableView dequeueReusableCellWithIdentifier:[AutoLayoutCell description] forIndexPath:indexPath];
    cell.titleLabel.text = self.datas[indexPath.row];
    
    return cell;
}

#pragma mark - UITableViewDelegate

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    self.heightCell.titleLabel.text = self.datas[indexPath.row];
    [self.heightCell resetLabelMaxLayoutWidthForTableView:tableView];
    
    CGFloat height = [self.heightCell.contentView systemLayoutSizeFittingSize:UILayoutFittingCompressedSize].height;
    
    NSLog(@"%f", height);
    
    return height + 1;
}


@end
