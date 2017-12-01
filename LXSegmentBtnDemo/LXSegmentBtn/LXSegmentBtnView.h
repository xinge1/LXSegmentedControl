//
//  LXSegmentBtnView.h
//  LXSegmentBtnDemo
//
//  Created by liuxin on 2017/12/1.
//  Copyright © 2017年 liuxin. All rights reserved.
//

#import <UIKit/UIKit.h>

@class LXSegmentBtnView;
@protocol LXSegmentBtnViewDelegate <NSObject>

-(void)lxSegmentView:(LXSegmentBtnView *)segmentView
         selectIndex:(NSInteger)selectIndex;

@end


typedef void(^lxSegmentBtnSelectIndexBlock)(NSInteger index);

@interface LXSegmentBtnView : UIView

@property (nonatomic , strong) NSArray *btnTitleArray;

@property (nonatomic , strong) UIColor *btnTitleNormalColor;

@property (nonatomic , strong) UIColor *btnTitleSelectColor;

@property (nonatomic , strong) UIColor *btnBackgroundNormalColor;

@property (nonatomic , strong) UIColor *btnBackgroundSelectColor;

@property (nonatomic , strong) UIFont *titleFont;

#pragma mark --block,delegate--
@property (nonatomic , copy) lxSegmentBtnSelectIndexBlock lxSegmentBtnSelectIndexBlock;

@property (nonatomic , weak) id<LXSegmentBtnViewDelegate> delegate;

@end
