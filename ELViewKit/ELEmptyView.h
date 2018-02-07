//
//  ELEmptyView.h
//  ELViewKitDemo
//
//  Created by yin linlin on 2018/2/7.
//  Copyright © 2018年 BKJK. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, EmptyViewMode) {
    EmptyViewModeSearch,
    EmptyViewModeBadNetWork,
    EmptyViewModeNormal,
    EmptyViewModeCustom,
};

@interface ELEmptyViewStyle : NSObject

@property (nonatomic, strong) UIFont *titleFont;
@property (nonatomic, strong) UIColor *titleColor;
@property (nonatomic, assign) CGSize imageSize;
@property (nonatomic, assign) BOOL showMsg;
@property (nonatomic, strong) UIView *customView;
@property (nonatomic, assign) EmptyViewMode type;
@end




@interface ELEmptyView : UIView

- (instancetype)initWithStyle:(ELEmptyViewStyle *)style;

- (void)updateWithStyle:(ELEmptyViewStyle *)style;

@end



