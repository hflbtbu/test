//
//  Table1ViewController.m
//  CustomeViewWithXib
//
//  Created by 黄富磊 on 13-6-14.
//  Copyright (c) 2013年 huangfulei. All rights reserved.
//

#import "Table1ViewController.h"
#import "CustomCell.h"

@interface Table1ViewController ()

@end

@implementation Table1ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    _name = 1;
    _address = 1000;
    
    //_tableView.separatorStyle = UITableViewCellSelectionStyleNone;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (int)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (int)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 100;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 400;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CustomCellIdentifer = @"CustomCellIdentifer";
//    static BOOL nibsReginstered = NO;
//    if (!nibsReginstered) {
//        UINib *nib = [UINib nibWithNibName:@"CustomCell" bundle:nil];
//        [tableView registerNib:nib forCellReuseIdentifier:CustomCellIdentifer];
//        nibsReginstered  = YES;
//    }
    
    CustomCell *cell = [tableView dequeueReusableCellWithIdentifier:CustomCellIdentifer];
    
    if (cell == nil) {
        cell = [CustomCell instanceCustomeCellWithStyle:UITableViewCellStyleDefault reuseIdentifier:CustomCellIdentifer];
        //cell = [[CustomCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CustomCellIdentifer];
    }
    
    [cell refreshCellWithName:[NSString stringWithFormat:@"name%d",_name++] Address:[NSString stringWithFormat:@"address%d",_address++]];
    
    NSLog(@"%p",cell);
    
    return cell;
}
@end
