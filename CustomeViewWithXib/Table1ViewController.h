//
//  Table1ViewController.h
//  CustomeViewWithXib
//
//  Created by 黄富磊 on 13-6-14.
//  Copyright (c) 2013年 huangfulei. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Table1ViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>

{
    IBOutlet UITableView    *_tableView;
    int                     _name;
    int                     _address;
}
@end
