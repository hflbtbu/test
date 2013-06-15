//
//  CustomeView.h
//  CustomeViewWithXib
//
//  Created by 黄富磊 on 13-6-9.
//  Copyright (c) 2013年 huangfulei. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomeView : UIView

{
    IBOutlet UIButton       *_maleButton;
    IBOutlet UIButton       *_femalButton;
    IBOutlet UIButton       *_hasHouse;
    IBOutlet UIButton       *_noHouse;
    
    IBOutlet UILabel        *_nameLB;
}

@property (nonatomic, retain) UILabel *nameLB;

+ (id)instanceCustomeView;

@end
