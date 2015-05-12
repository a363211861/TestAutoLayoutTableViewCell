//
//  AutoLayoutCell.m
//  TestAutoLayoutTableViewCell
//
//  Created by Creu on 15/5/11.
//  Copyright (c) 2015年 YanW. All rights reserved.
//

#import "AutoLayoutCell.h"

@interface AutoLayoutCell ()

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *leftConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *rightConstraint;


@end

@implementation AutoLayoutCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)resetLabelMaxLayoutWidthForTableView:(UITableView *)tableView
{
    self.titleLabel.preferredMaxLayoutWidth = CGRectGetWidth(tableView.frame) - self.leftConstraint.constant - self.rightConstraint.constant;
}

@end
