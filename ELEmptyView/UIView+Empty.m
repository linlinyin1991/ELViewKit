//
//  UIView+Empty.m
//  ELViewKitDemo
//
//  Created by yin linlin on 2018/2/7.
//  Copyright © 2018年 BKJK. All rights reserved.
//

#import "UIView+Empty.h"
#import <objc/runtime.h>
#import "Masonry.h"

@interface UIView ()
@property (nonatomic, strong) ELEmptyView *baseEmptyView;
@end

@implementation UIView (Empty)
static char kELEmptyViewKey;

- (void)setEmptyViewWithStyle:(ELEmptyViewStyle *)style {
    if (!self.baseEmptyView) {
        ELEmptyView * newEmptyView = [[ELEmptyView alloc] initWithStyle:style];
        self.baseEmptyView = newEmptyView;
        for (UIView *view in self.subviews) {
            if ([view isKindOfClass:[ELEmptyView class]]) {
                [view removeFromSuperview];
            }
        }
        [self addSubview:self.baseEmptyView];
        //让 emptyBGView 始终保持在最上层
        [self bringSubviewToFront:self.baseEmptyView];
        newEmptyView.hidden = YES;
        [newEmptyView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.mas_equalTo(UIEdgeInsetsMake(0, 0, 0, 0));
        }];
    } else {
        [self.baseEmptyView updateWithStyle:style];
    }
}

- (void)setBaseEmptyView:(ELEmptyView *)baseEmptyView {
    objc_setAssociatedObject(self, &kELEmptyViewKey, baseEmptyView, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}


- (ELEmptyView *)baseEmptyView{
    return  objc_getAssociatedObject(self, &kELEmptyViewKey);
}


- (void)showEmptyView:(BOOL)show {
    if (self.baseEmptyView) {
        self.baseEmptyView.hidden = !show;
    }
}
@end
