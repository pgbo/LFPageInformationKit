//
//  LifePageStatusDisplayItemFactory.m
//  LFPageInformationKitDemo
//
//  Created by guangbool on 16/6/1.
//  Copyright © 2016年 guangbool. All rights reserved.
//

#import "LifePageStatusDisplayItemFactory.h"

@implementation LifePageStatusDisplayItemFactory

+ (LFPageInformationDisplayItem *)createDefaultPlainTextDisplayItemWithContainerView:(UIView *)containerView
                                                                         displayText:(NSString *)displayText
{
    return [self createDefaultDisplayItemWithContainerView:containerView
                                              displayImage:nil
                                               displayText:displayText
                              displayActionButtonWithTitle:nil];
}

+ (LFPageInformationDisplayItem *)createDefaultNoDataDisplayItemWithContainerView:(UIView *)containerView
                                                                      displayText:(NSString *)displayText
                                                     displayActionButtonWithTitle:(NSString *)displayActionButtonWithTitle
{
    return [self createDefaultDisplayItemWithContainerView:containerView
                                              displayImage:[UIImage imageNamed:@"empty"]
                                               displayText:displayText
                              displayActionButtonWithTitle:displayActionButtonWithTitle];
}

+ (LFPageInformationDisplayItem *)createDefaultDisplayItemWithContainerView:(UIView *)containerView
                                                               displayImage:(UIImage *)displayImage
                                                                displayText:(NSString *)displayText
                                               displayActionButtonWithTitle:(NSString *)displayActionButtonWithTitle
{
    CGFloat screenWidth = CGRectGetWidth([UIScreen mainScreen].bounds);
    LFPageInformationDefaultDisplayViewLayout *layout = [[self class]pageInformationDisplayViewLayoutWithDisplayImage:displayImage?YES:NO
                                                                                                  displayActionButton:displayActionButtonWithTitle?YES:NO];
    LFPageInformationDefaultDisplayView *displayView = [[LFPageInformationDefaultDisplayView alloc]initWithFrame:CGRectMake(0,
                                                                                                                            0,
                                                                                                                            screenWidth,
                                                                                                                            100)
                                                                                                          layout:layout];
    [displayView.imageView setImage:displayImage];
    displayView.textLabel.text = displayText;
    [displayView.actionButton setTitle:displayActionButtonWithTitle forState:UIControlStateNormal];
    
    // TODO: custom displayView here
    [displayView.actionButton setBackgroundColor:[UIColor blueColor]];
    [displayView.actionButton.layer setCornerRadius:4];
    
    LFPageInformationDisplayItem *displayItem = [[LFPageInformationDisplayItem alloc]initWithPageInformationDisplayView:displayView
                                                                                           pageInformationContainerView:containerView];
    displayItem.pageInformationAnimation = ({
        LFPageInformationSimpleAnimation *animation = [[LFPageInformationSimpleAnimation alloc]init];
        animation.informationDisplayView = displayView;
        animation;
    });
    return displayItem;
}

+ (LFPageInformationDefaultDisplayViewLayout *)pageInformationDisplayViewLayoutWithDisplayImage:(BOOL)displayImage
                                                                            displayActionButton:(BOOL)displayActionButton
{
    static LFPageInformationDefaultDisplayViewLayout *defaultLayout;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        defaultLayout = ({
            LFPageInformationDefaultDisplayViewLayout *layout = [[LFPageInformationDefaultDisplayViewLayout alloc]init];
            layout.imageViewInsets = UIEdgeInsetsMake(0, 20, 0, 20);
            layout.imageViewHeight = 64;
            layout.textLabelInsets = UIEdgeInsetsMake(16, 20, 0, 20);
            layout.actionButtonInsets = UIEdgeInsetsMake(16, 20, 0, 20);
            layout.actionButtonHeight = 38;
            layout;
        });
    });
    
    LFPageInformationDefaultDisplayViewLayout *layout = [defaultLayout copy];
    
    if (!displayImage) {
        layout.imageViewInsets = UIEdgeInsetsZero;
        layout.imageViewHeight = 0;
    }
    
    if (!displayActionButton) {
        layout.actionButtonInsets = UIEdgeInsetsZero;
        layout.actionButtonHeight = 0;
    }
    
    return layout;
}

@end
