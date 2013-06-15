//
//  SearchRoommatesFilterView1.m
//  CustomeViewWithXib
//
//  Created by 黄富磊 on 13-6-14.
//  Copyright (c) 2013年 huangfulei. All rights reserved.
//

#import "SearchRoommatesFilterView.h"

@implementation SearchRoommatesFilterView

- (id)initWithFrame:(CGRect)frame Delegate:(id<SearchRoommatesFilterViewDelegate>)delegate
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        _delegate = delegate;
        
        _bgImg.image = [[UIImage imageNamed:@"taobaoGuideCategoryViewBg.png"] resizableImageWithCapInsets:UIEdgeInsetsMake(0, 0, 100, 0)];
        self.frame = frame;
        
        CGRect frame = self.frame;
        // _maleButton = [UIButton buttonWithType:UIButtonTypeCustom];
        //_maleButton.frame = CGRectMake(0, 0, 41, 41);
        //_maleButton.center = CGPointMake(64, 40);
        [_maleButton setBackgroundImage:[UIImage imageNamed:@"searchRoommates_boy.png"] forState:UIControlStateNormal];
        [_maleButton setBackgroundImage:[UIImage imageNamed:@"searchRoommates_boy_selected.png"] forState:UIControlStateSelected];
        _maleButton.selected = YES;
        [_maleButton addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
        //        label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 50, 15)];
        //        label.center = CGPointMake(64, 40 + 30);
        //        label.textColor = [UIColor colorWithRed:87/255.0 green:87/255.0 blue:87/255.0 alpha:1.0];
        //        label.font = [UIFont systemFontOfSize:11];
        //        label.backgroundColor = [UIColor clearColor];
        //        label.textAlignment = UITextAlignmentCenter;
        //        label.text = NSLocalizedString(@"帅哥", @"");
        //        [self addSubview:label];
        //        [self addSubview:_maleButton];
        
        //_femaleButton = [UIButton buttonWithType:UIButtonTypeCustom];
        // _femaleButton.frame = CGRectMake(0, 0, 41, 41);
        //_femaleButton.center = CGPointMake(119, 40);
        [_femaleButton setBackgroundImage:[UIImage imageNamed:@"searchRoommates_girl.png"] forState:UIControlStateNormal];
        [_femaleButton setBackgroundImage:[UIImage imageNamed:@"searchRoommates_girl_selected.png"] forState:UIControlStateSelected];
        _femaleButton.selected = YES;
        [_femaleButton addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
        //        label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 50, 15)];
        //        label.center = CGPointMake(119, 40 + 30);
        //        label.textColor = [UIColor colorWithRed:87/255.0 green:87/255.0 blue:87/255.0 alpha:1.0];
        //        label.font = [UIFont systemFontOfSize:11];
        //        label.backgroundColor = [UIColor clearColor];
        //        label.textAlignment = UITextAlignmentCenter;
        //        label.text = NSLocalizedString(@"美女", @"");
        //        [self addSubview:label];
        //        [self addSubview:_femaleButton];
        
        //_hasHouseButton = [UIButton buttonWithType:UIButtonTypeCustom];
        //_hasHouseButton.frame = CGRectMake(0, 0, 41, 41);
        //_hasHouseButton.center = CGPointMake(198, 40);
        [_hasHouseButton setBackgroundImage:[UIImage imageNamed:@"searchRoommates_havehouse.png"] forState:UIControlStateNormal];
        [_hasHouseButton setBackgroundImage:[UIImage imageNamed:@"searchRoommates_havehouse_selected.png"] forState:UIControlStateSelected];
        _hasHouseButton.selected = YES;
        [_hasHouseButton addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
        //        label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 50, 15)];
        //        label.center = CGPointMake(198, 40 + 30);
        //        label.textColor = [UIColor colorWithRed:87/255.0 green:87/255.0 blue:87/255.0 alpha:1.0];
        //        label.font = [UIFont systemFontOfSize:11];
        //        label.backgroundColor = [UIColor clearColor];
        //        label.textAlignment = UITextAlignmentCenter;
        //        label.text = NSLocalizedString(@"有房", @"");
        //        [self addSubview:label];
        //        [self addSubview:_hasHouseButton];
        
        //_noHouseButton = [UIButton buttonWithType:UIButtonTypeCustom];
        //_noHouseButton.frame = CGRectMake(0, 0, 41, 41);
        //_noHouseButton.center = CGPointMake(256, 40);
        [_noHouseButton setBackgroundImage:[UIImage imageNamed:@"searchRoommates_nohouse.png"] forState:UIControlStateNormal];
        [_noHouseButton setBackgroundImage:[UIImage imageNamed:@"searchRoommates_nohouse_selected.png"] forState:UIControlStateSelected];
        _noHouseButton.selected = YES;
        [_noHouseButton addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
        //        label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 50, 15)];
        //        label.center = CGPointMake(256, 40 + 30);
        //        label.textColor = [UIColor colorWithRed:87/255.0 green:87/255.0 blue:87/255.0 alpha:1.0];
        //        label.font = [UIFont systemFontOfSize:11];
        //        label.backgroundColor = [UIColor clearColor];
        //        label.textAlignment = UITextAlignmentCenter;
        //        label.text = NSLocalizedString(@"没房", @"");
        //        [self addSubview:label];
        //        [self addSubview:_noHouseButton];
        
        
        //UIImageView *imgView = [[UIImageView alloc] initWithFrame:CGRectMake(36, 120, 248, 9)];
        _priceLine.image = [UIImage imageNamed:@"searchRoommates_priceline.png"];
        //[self addSubview:imgView];
        //_hideView = [[UIView alloc] initWithFrame:CGRectMake(36, 120, 0, 9)];
        _hideView.clipsToBounds = YES;
        //UIImageView *imgSelected = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 248, 9)];
        _priceLineSelected.image = [UIImage imageNamed:@"searchRoommates_priceline_selected.png"];
        //[_hideView addSubview:imgSelected];
        //[self addSubview:_hideView];
        
        // _move = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 22, 22)];
        _move.image = [UIImage imageNamed:@"searchRoommates_move.png"];
        //_move.center = CGPointMake(40, _hideView.center.y);
        //[self addSubview:_move];
        
        
        //_priceLB = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 11)];
        //_priceLB.center = CGPointMake(self.frame.size.width/2, _hideView.center.y - 20);
        _priceLB.textAlignment = UITextAlignmentCenter;
        _priceLB.font = [UIFont systemFontOfSize:11];
        _priceLB.textColor = [UIColor colorWithRed:87/255.0 green:87/255.7 blue:87/255.0 alpha:1.0];
        _priceLB.backgroundColor = [UIColor clearColor];
        _priceLB.text = NSLocalizedString(@"不差钱", @"");
        //[self addSubview:_priceLB];
        
        //        label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 40, 15)];
        //        label.center = CGPointMake(40, 145);
        //        label.textColor = [UIColor colorWithRed:87/255.0 green:87/255.0 blue:87/255.0 alpha:1.0];
        //        label.font = [UIFont systemFontOfSize:11];
        //        label.backgroundColor = [UIColor clearColor];
        //        label.textAlignment = UITextAlignmentCenter;
        //        label.text = NSLocalizedString(@"无底线", @"");
        //        [self addSubview:label];
        //
        //        label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 40, 15)];
        //        label.center = CGPointMake(88, 145);
        //        label.textColor = [UIColor colorWithRed:87/255.0 green:87/255.0 blue:87/255.0 alpha:1.0];
        //        label.font = [UIFont systemFontOfSize:11];
        //        label.backgroundColor = [UIColor clearColor];
        //        label.textAlignment = UITextAlignmentCenter;
        //        label.text = NSLocalizedString(@"500", @"");
        //        [self addSubview:label];
        //
        //        label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 40, 15)];
        //        label.center = CGPointMake(135, 145);
        //        label.textColor = [UIColor colorWithRed:87/255.0 green:87/255.0 blue:87/255.0 alpha:1.0];
        //        label.font = [UIFont systemFontOfSize:11];
        //        label.backgroundColor = [UIColor clearColor];
        //        label.textAlignment = UITextAlignmentCenter;
        //        label.text = NSLocalizedString(@"1000", @"");
        //        [self addSubview:label];
        //
        //        label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 40, 15)];
        //        label.center = CGPointMake(182, 145);
        //        label.textColor = [UIColor colorWithRed:87/255.0 green:87/255.0 blue:87/255.0 alpha:1.0];
        //        label.font = [UIFont systemFontOfSize:11];
        //        label.backgroundColor = [UIColor clearColor];
        //        label.textAlignment = UITextAlignmentCenter;
        //        label.text = NSLocalizedString(@"1500", @"");
        //        [self addSubview:label];
        //
        //        label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 40, 15)];
        //        label.center = CGPointMake(230, 145);
        //        label.textColor = [UIColor colorWithRed:87/255.0 green:87/255.0 blue:87/255.0 alpha:1.0];
        //        label.font = [UIFont systemFontOfSize:11];
        //        label.backgroundColor = [UIColor clearColor];
        //        label.textAlignment = UITextAlignmentCenter;
        //        label.text = NSLocalizedString(@"2100", @"");
        //        [self addSubview:label];
        //
        //        label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 40, 15)];
        //        label.center = CGPointMake(280, 145);
        //        label.textColor = [UIColor colorWithRed:87/255.0 green:87/255.0 blue:87/255.0 alpha:1.0];
        //        label.font = [UIFont systemFontOfSize:11];
        //        label.backgroundColor = [UIColor clearColor];
        //        label.textAlignment = UITextAlignmentCenter;
        //        label.text = NSLocalizedString(@"不差钱", @"");
        //        [self addSubview:label];
        
        
        //        UIButton *okButton = [UIButton buttonWithType:UIButtonTypeCustom];
        //        okButton.frame = CGRectMake(11, self.frame.size.height - 72, 298, 39);
                [_okButton.titleLabel setFont:[UIFont systemFontOfSize:18]];
                _okButton.titleLabel.textColor  = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1.0];
                [_okButton setTitle: NSLocalizedString(@"确定筛选", @"") forState:UIControlStateNormal];
                [_okButton setBackgroundImage:[UIImage imageNamed:@"searchRoommates_button.png"] forState:UIControlStateNormal];
                [_okButton setBackgroundImage:[UIImage imageNamed:@"searchRoommates_button_selected.png"] forState:UIControlStateHighlighted];
                [_okButton addTarget:self action:@selector(ok) forControlEvents:UIControlEventTouchUpInside];
                //[self addSubview:_okButton];
    }
    return self;
}

+ (id)instanceFilterViewWithFrame:(CGRect)frame Delegate:(id<SearchRoommatesFilterViewDelegate>)delegate
{
    NSArray *views = [[NSBundle mainBundle] loadNibNamed:@"SearchRoommatesFilterView" owner:nil options:nil];
    SearchRoommatesFilterView *view = [views objectAtIndex:0];
    view = [view initWithFrame:frame Delegate:delegate];
    return view;
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    
    UITouch * touch = [touches anyObject];
    CGPoint point = [touch locationInView:self];
    if (point.y >= _priceLB.center.y - 10 && point.y <= _move.center.y + 25) {
        _begainX = point.x;
    }
    
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch * touch = [touches anyObject];
    CGPoint point = [touch locationInView:self];
    if (point.y >= _priceLB.center.y - 10 && point.y <= _move.center.y + 25) {
        int endX = point.x;
        int distance = endX - _begainX;
        if (distance != 0) {
            [self moveBallWith:distance];
        }
        _begainX = endX;
    }
}

- (void)moveBallWith:(int)distance
{
    int centerX = _move.center.x + distance;
    if (centerX >= 40 && centerX <= 280) {
        _move.center = CGPointMake(centerX, _move.center.y);
        _hideView.frame = CGRectMake(_hideView.frame.origin.x, _hideView.frame.origin.y, centerX - 36, _hideView.frame.size.height);
        _priceLB.text = [self getPriceTitleWith:[self getPriceWith:centerX]];
    }
}

- (void)buttonClicked:(UIButton *)sender
{
    if (sender.isSelected == YES) {
        sender.selected = NO;
    } else {
        sender.selected = YES;
    }
}

- (NSString *)getPriceTitleWith:(int)price
{
    NSString *title;
    switch (price) {
        case 0:
            title = NSLocalizedString(@"无底线", @"");
            break;
        case 2600:
            title = NSLocalizedString(@"不差钱", @"");
            break;
        default:
            title = [NSString stringWithFormat:NSLocalizedString(@"%d元/月", @""),price];
            break;
    }
    return title;
}

- (int)getPriceWith:(int)centerX
{
    int length = 240/25;
    int count = (centerX - 40)/length;
    if (centerX > count*length + length/2 ) {
        count++;
    }
    count--;
    count *= 100;
    return count;
}

- (NSDictionary *)getResultDic
{
    NSNumber *gender = nil;
    if (_maleButton.isSelected && !_femaleButton.isSelected) {
        gender = [NSNumber numberWithInt:1];
    }
    if (!_maleButton.isSelected && _femaleButton.isSelected) {
        gender = [NSNumber numberWithInt:2];
    }
    
    NSNumber *house = nil;
    if (_hasHouseButton.isSelected && !_noHouseButton.isSelected) {
        house = [NSNumber numberWithInt:5];
    }
    if (!_hasHouseButton.isSelected && _noHouseButton.isSelected) {
        house = [NSNumber numberWithInt:6];
    }
    
    NSNumber *priceUpper;
    NSNumber *priceLower = nil;
    int price = [self getPriceWith:_move.center.x];
    switch (price) {
        case 0:
            priceUpper = nil;
            break;
        case 2600:
            priceUpper = nil;
            break;
            
        default:
            priceUpper = [NSNumber numberWithInt:price];
            break;
    }
    
    NSMutableDictionary *dic = [[NSMutableDictionary alloc] initWithCapacity:4];
    [dic setValue:gender forKey:kSearch_Roommates_Gender];
    [dic setValue:house forKey:kSearch_Roommates_Renttype];
    [dic setValue:priceLower forKey:kSearch_Roommates_Pricelower];
    [dic setValue:priceUpper forKey:kSearch_Roommates_Priceupper];
    return dic;
}

- (void)ok
{
    if ([_delegate respondsToSelector:@selector(searchRoommatesFilterView:didSelectResult:)]) {
        [_delegate searchRoommatesFilterView:self didSelectResult:[self getResultDic]];
    }
}
@end
