//
//  AutoLayoutCell.h
//  TestAutoLayoutTableViewCell
//
//  Created by Creu on 15/5/11.
//  Copyright (c) 2015年 YanW. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AutoLayoutCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

- (void)resetLabelMaxLayoutWidthForTableView:(UITableView *)tableView;

@end
