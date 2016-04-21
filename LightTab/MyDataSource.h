//
//  MyDataSource.h
//  LightTab
//
//  Created by shenyuan on 16/4/21.
//  Copyright © 2016年 shenyuan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef void(^cellConfigBlock)(id cell, id item);

@interface MyDataSource : NSObject<UITableViewDataSource>

- (id)initWithItems:(NSArray *)anItem cellIndentifier:(NSString *)aCellIdentifier configBlcok:(cellConfigBlock)aConfigureCellBlock;
- (id)itemAtIndexPath:(NSIndexPath *)indexPath;

@end
