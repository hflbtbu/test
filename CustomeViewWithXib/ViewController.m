//
//  ViewController.m
//  CustomeViewWithXib
//
//  Created by 黄富磊 on 13-6-9.
//  Copyright (c) 2013年 huangfulei. All rights reserved.
//

#import "ViewController.h"
#import "CustomeView.h"
@interface ViewController ()

@end

@implementation ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)searchRoommatesFilterView:(SearchRoommatesFilterView *)searchRoommatesFilterView didSelectResult:(NSDictionary *)result
{
//    _filterView.frame = CGRectMake(_filterView.frame.origin.x, _filterView.frame.origin.y, _filterView.frame.size.width - 5, _filterView.frame.size.height);
    static BOOL isOpen = YES;
    if (isOpen) {
        [UIView animateWithDuration:1 animations:^{
            _filterView.frame = CGRectMake(_filterView.frame.origin.x, -(_filterView.frame.size.height - 80), _filterView.frame.size.width, _filterView.frame.size.height);
            isOpen = NO;
        }];
    } else {
        [UIView animateWithDuration:1 animations:^{
            _filterView.frame = CGRectMake(_filterView.frame.origin.x, 0, _filterView.frame.size.width, _filterView.frame.size.height);
            isOpen = YES;
        }];
    }
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    CustomeView *customeView = [CustomeView instanceCustomeView];
    customeView.frame = self.view.bounds;
    customeView.nameLB.text = @"hello word";
    //[self.view addSubview:customeView];
    _filterView = [SearchRoommatesFilterView instanceFilterViewWithFrame:CGRectMake(0, 0, 320, 260) Delegate:self];
    
    [self.view addSubview:_filterView];
    _filterView.frame = CGRectMake(40, 0, 240, 400);
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
