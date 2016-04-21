//
//  MyCell.m
//  LightTab
//
//  Created by shenyuan on 16/4/21.
//  Copyright © 2016年 shenyuan. All rights reserved.
//

#import "MyCell.h"

@implementation MyCell

+(UINib *)nib {
    return [UINib nibWithNibName:@"MyCell" bundle:nil];
}

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
