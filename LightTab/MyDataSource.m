//
//  MyDataSource.m
//  LightTab
//
//  Created by shenyuan on 16/4/21.
//  Copyright © 2016年 shenyuan. All rights reserved.
//

#import "MyDataSource.h"

@interface MyDataSource ()
@property (nonatomic, strong) NSArray *items;
@property (nonatomic, copy) NSString *cellIdentifier;
@property (nonatomic, copy) cellConfigBlock configCellBlock;
@end

@implementation MyDataSource

- (id)init{
    return nil;
}

- (id)initWithItems:(NSArray *)anItem cellIndentifier:(NSString *)aCellIdentifier configBlcok:(cellConfigBlock)aConfigureCellBlock {
    
    if (self = [super init]) {
        self.items = anItem;
        self.cellIdentifier = aCellIdentifier;
        self.configCellBlock = [aConfigureCellBlock copy];
    }

    return self;
}

- (id)itemAtIndexPath:(NSIndexPath *)indexPath {
    return self.items[(NSUInteger)indexPath.row];
}

#pragma mark - UItableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.items.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:self.cellIdentifier forIndexPath:indexPath];
    id item = [self itemAtIndexPath:indexPath];
    if (_configCellBlock) {
        _configCellBlock(cell,item);
    }
    NSLog(@"%@", cell);
    return cell;
}
@end
