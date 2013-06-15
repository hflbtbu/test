//
//  SearchRoommatesFilterView1.h
//  CustomeViewWithXib
//
//  Created by 黄富磊 on 13-6-14.
//  Copyright (c) 2013年 huangfulei. All rights reserved.
//

#define kSearch_Roommates_Gender        @"search_roommates_gender"
#define kSearch_Roommates_Renttype      @"roommates_renttype"
#define kSearch_Roommates_Pricelower    @"search_roommates_pricelower"
#define kSearch_Roommates_Priceupper    @"search_roommates_priceupper"
#import <UIKit/UIKit.h>

@protocol SearchRoommatesFilterViewDelegate;

@interface SearchRoommatesFilterView : UIView
{
    int                                                                   _begainX;
    IBOutlet UIButton                                                     *_maleButton;
    IBOutlet UIButton                                                     *_femaleButton;
    IBOutlet UIButton                                                     *_hasHouseButton;
    IBOutlet UIButton                                                     *_noHouseButton;
    IBOutlet UIImageView                                                  *_move;
    IBOutlet UILabel                                                      *_priceLB;
    IBOutlet UIImageView                                                  *_priceLine;
    IBOutlet UIImageView                                                  *_priceLineSelected;
    IBOutlet UIView                                                       *_hideView;
    IBOutlet UIButton                                                     *_okButton;
    IBOutlet UIImageView                                                  *_bgImg;
    id <SearchRoommatesFilterViewDelegate> __unsafe_unretained            _delegate;
}

- (id)initWithFrame:(CGRect)frame Delegate:(id<SearchRoommatesFilterViewDelegate>)delegate;

+ (id)instanceFilterViewWithFrame:(CGRect)frame Delegate:(id<SearchRoommatesFilterViewDelegate>)delegate;


@end

@protocol SearchRoommatesFilterViewDelegate <NSObject>

- (void)searchRoommatesFilterView:(SearchRoommatesFilterView *)searchRoommatesFilterView didSelectResult:(NSDictionary *)result;

@end