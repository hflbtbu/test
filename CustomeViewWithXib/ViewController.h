//
//  ViewController.h
//  CustomeViewWithXib
//
//  Created by 黄富磊 on 13-6-9.
//  Copyright (c) 2013年 huangfulei. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SearchRoommatesFilterView.h"

@interface ViewController : UIViewController<SearchRoommatesFilterViewDelegate>
{
    SearchRoommatesFilterView   *_filterView;
}
@end
