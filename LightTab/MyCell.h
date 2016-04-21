//
//  MyCell.h
//  LightTab
//
//  Created by shenyuan on 16/4/21.
//  Copyright © 2016年 shenyuan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *ItemLab;

+(UINib *)nib;

@end
