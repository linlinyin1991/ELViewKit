//
//  ELEmptyView.m
//  ELViewKitDemo
//
//  Created by yin linlin on 2018/2/7.
//  Copyright © 2018年 BKJK. All rights reserved.
//

#import "ELEmptyView.h"
#import "Masonry.h"

@interface ELEmptyView()

@property (nonatomic, strong) UIImageView *emptyImageView;
@property (nonatomic, strong) UILabel *emptyLabel;
@property (nonatomic, strong) ELEmptyViewStyle *style;

@end

@implementation ELEmptyView

- (instancetype)initWithStyle:(ELEmptyViewStyle *)style {
    if (self = [super init]) {
        self.style = style;
        [self setUI];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self setUI];
    }
    return self;
}


- (void)setUI {
    self.emptyImageView = [[UIImageView alloc] init];
    self.emptyImageView.contentMode = UIViewContentModeCenter;
    [self addSubview:self.emptyImageView];
    self.emptyLabel.backgroundColor = [UIColor clearColor];
    self.emptyLabel = [[UILabel alloc] init];
    self.emptyLabel.font = self.style.titleFont;
    self.emptyLabel.textColor = self.style.titleColor;
    self.emptyLabel.textAlignment = NSTextAlignmentCenter;
    self.emptyLabel.numberOfLines = 0;
    [self addSubview:self.emptyLabel];
    switch (self.style.type) {
        case EmptyViewModeSearch:
        {
            NSString * imagePath = [[[NSBundle mainBundle] pathForResource:@"EmptyImage" ofType:@"bundle"] stringByAppendingPathComponent:@"empty_search"];
            self.emptyImageView.image = [UIImage imageWithContentsOfFile:imagePath];
            self.emptyLabel.text = @"暂无搜索结果";
        }
            break;
        case EmptyViewModeNormal:
        {
            NSString * imagePath = [[[NSBundle mainBundle] pathForResource:@"EmptyImage" ofType:@"bundle"] stringByAppendingPathComponent:@"empty_normal"];
            self.emptyImageView.image = [UIImage imageWithContentsOfFile:imagePath];
            self.emptyLabel.text = @"暂无数据";
        }
            break;
        default:
            break;
    }
}


- (void)updateWithStyle:(ELEmptyViewStyle *)style {
    
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end


@implementation ELEmptyViewStyle
- (instancetype)init {
    if (self = [super init]) {
        
    }
    return self;
}
@end
