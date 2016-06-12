//
//  ViewController.m
//  LFPageInformationKitDemo
//
//  Created by guangbool on 16/5/31.
//  Copyright © 2016年 guangbool. All rights reserved.
//

#import "ViewController.h"

#import "LifePageStatusDisplayItemFactory.h"

@interface ViewController ()

@property (nonatomic) LFPageInformationDisplayItem *noDataDisplayItem;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _noDataDisplayItem = [LifePageStatusDisplayItemFactory createDefaultNoDataDisplayItemWithContainerView:self.view
                                                                                               displayText:@"兑换记录为空？怎么可以!\n快去下个单体验一下吧!"
                                                                              displayActionButtonWithTitle:@"等我，这就去下单"];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [_noDataDisplayItem displayWithAnimated:YES];
//        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//            [_noDataDisplayItem hideWithAnimated:YES];
//        });
    });
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
