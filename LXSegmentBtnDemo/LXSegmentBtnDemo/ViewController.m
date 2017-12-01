//
//  ViewController.m
//  LXSegmentBtnDemo
//
//  Created by liuxin on 2017/12/1.
//  Copyright © 2017年 liuxin. All rights reserved.
//

#import "ViewController.h"
#import "LXSegmentBtnView.h"

@interface ViewController ()<LXSegmentBtnViewDelegate>
@property (nonatomic , strong) LXSegmentBtnView *segmentView1;
@property (nonatomic , strong) LXSegmentBtnView *segmentView2;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    CGFloat btnW = 80;
    self.segmentView1.frame = CGRectMake((self.view.frame.size.width - btnW*2)/2, 60, btnW*2, 40);
    self.segmentView1.btnTitleArray = @[@"Test1",@"Test2"];
    
    self.segmentView2.frame = CGRectMake((self.view.frame.size.width - btnW*3)/2, 160, btnW*3, 40);
    self.segmentView2.btnTitleArray = @[@"Test1",@"Test2",@"Test3"];
    self.segmentView2.lxSegmentBtnSelectIndexBlock = ^(NSInteger index) {
        NSLog(@"block , index = %zd" , index);
    };
    
}

#pragma ---LXSegmentBtnViewDelegate---
-(void)lxSegmentView:(LXSegmentBtnView *)segmentView selectIndex:(NSInteger)selectIndex{
    if (segmentView == self.segmentView1) {
        NSLog(@"delegate ,index = %zd" , selectIndex);
    }
}

-(LXSegmentBtnView *)segmentView1{
    if (!_segmentView1) {
        _segmentView1 = [[LXSegmentBtnView alloc] init];
        _segmentView1.delegate = self;
        _segmentView1.btnBackgroundSelectColor = [UIColor grayColor];
        _segmentView1.titleFont = [UIFont systemFontOfSize:20];
        [self.view addSubview:_segmentView1];
    }
    return _segmentView1;
}
-(LXSegmentBtnView *)segmentView2{
    if (!_segmentView2) {
        _segmentView2 = [[LXSegmentBtnView alloc] init];
        [self.view addSubview:_segmentView2];
    }
    return _segmentView2;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
