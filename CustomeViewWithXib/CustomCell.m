//
//  CustomCell.m
//  CustomeViewWithXib
//
//  Created by 黄富磊 on 13-6-14.
//  Copyright (c) 2013年 huangfulei. All rights reserved.
//

#import "CustomCell.h"

@implementation CustomCell

@synthesize nameLB = _nameLB;
@synthesize addressLB = _addressLB;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        _nameLB.backgroundColor = [UIColor orangeColor];
        _nameLB.textAlignment = NSTextAlignmentCenter;
        _addressLB.backgroundColor = [UIColor orangeColor];
        _thumbailImg.clipsToBounds = YES;
        _thumbailImg.image = [UIImage imageNamed:@"searchRoommates_boy_selected.png"];
        
        UIView *backgroundView = [[UIView alloc] init];
        backgroundView.backgroundColor = [UIColor blueColor];
        self.backgroundView = backgroundView;
        UIView *selectedView = [[UIView alloc] init];
        selectedView.backgroundColor = [UIColor redColor];
        self.selectedBackgroundView = selectedView;
    }
    return self;
}

+ (id)instanceCustomeCellWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    UINib *nib = [UINib nibWithNibName:@"CustomCell" bundle:nil];
    
    NSArray *cells = [[NSBundle mainBundle] loadNibNamed:@"CustomCell" owner:nil options:nil];
    cells = [nib instantiateWithOwner:nil options:nil];
    CustomCell *cell = [cells objectAtIndex:0];
    cell = [cell initWithStyle:style reuseIdentifier:reuseIdentifier];
    return cell;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)refreshCellWithName:(NSString *)name Address:(NSString *)address
{
    
    
    _nameLB.text = name;
    _addressLB.text = address;
    _thumbailImg.image = [UIImage imageNamed:@"1landMark.png"];
    
//    for (UIView *viw in [self subviews]) {
//        NSLog(@"%@",[viw class]);
//        for (UIView *view in [viw subviews]) {
//            NSLog(@"%@ subviews %@",[viw class],[view class]);
//        }
//    }
}

@end
