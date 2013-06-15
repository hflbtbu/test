//
//  CustomCell.h
//  CustomeViewWithXib
//
//  Created by 黄富磊 on 13-6-14.
//  Copyright (c) 2013年 huangfulei. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomCell : UITableViewCell

{
    IBOutlet UILabel            *_nameLB;
    IBOutlet UILabel            *_addressLB;
    IBOutlet UIImageView        *_thumbailImg;
}

@property (nonatomic, retain) UILabel *nameLB;
@property (nonatomic, retain) UILabel *addressLB;

- (void)refreshCellWithName:(NSString *)name Address:(NSString *)address;


+ (id)instanceCustomeCellWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier;
@end
