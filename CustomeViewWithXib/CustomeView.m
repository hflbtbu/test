//
//  CustomeView.m
//  CustomeViewWithXib
//
//  Created by 黄富磊 on 13-6-9.
//  Copyright (c) 2013年 huangfulei. All rights reserved.
//

#import "CustomeView.h"

@implementation CustomeView

@synthesize nameLB = _nameLB;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        
        self.backgroundColor = [UIColor orangeColor];
        _femalButton.backgroundColor = [UIColor orangeColor];
        [_femalButton addTarget:self action:@selector(ok) forControlEvents:UIControlEventTouchUpInside];
    }
    return self;
}

- (void)ok
{
    
    NSLog(@"femaleButton is Clicked");
}

- (void)add
{
     [_femalButton addTarget:self action:@selector(ok) forControlEvents:UIControlEventTouchUpInside];
}

+ (id)instanceCustomeView
{
    NSArray *views = [[NSBundle mainBundle] loadNibNamed:@"CustomeView" owner:nil options:nil];
    
    CustomeView *view = [views objectAtIndex:0];
    [view add];
    return view;
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
