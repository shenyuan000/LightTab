//
//  ViewController.m
//  LightTab
//
//  Created by shenyuan on 16/4/21.
//  Copyright © 2016年 shenyuan. All rights reserved.
//

#import "ViewController.h"
#import "MyDataSource.h"
#import "MyCell.h"
#import "ItemModel.h"

static NSString *const CellIdentifier = @"MyCell";

@interface ViewController ()<UITableViewDelegate>
@property (nonatomic, strong) UITableView *tableview;
@property (nonatomic, strong) MyDataSource *myDataSource;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
     [self setupTableView];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)setupTableView {
    
   
    
    NSMutableArray *modelArr = [[NSMutableArray alloc] init];
    for (int i = 0; i < 10; i++) {
        ItemModel *model = [[ItemModel alloc] init];
        model.desc = @"Hello world";
        [modelArr addObject:model];
    }
    
    cellConfigBlock configureCell = ^(MyCell *cell, ItemModel *model) {
        cell.ItemLab.text = model.desc;
    };
    
    
    self.myDataSource = [[MyDataSource alloc] initWithItems:modelArr cellIndentifier:CellIdentifier configBlcok:configureCell];
    
    self.tableview = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    [self.view addSubview:self.tableview];
    self.tableview.delegate = self;
    self.tableview.dataSource = self.myDataSource;
    
    [self.tableview registerNib:[MyCell nib] forCellReuseIdentifier:CellIdentifier];
    
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
