//
//  LifePageStatusDisplayItemFactory.h
//  LFPageInformationKitDemo
//
//  Created by guangbool on 16/6/1.
//  Copyright © 2016年 guangbool. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "LFPageInformationDisplay.h"

@interface LifePageStatusDisplayItemFactory : NSObject

/**
 *  创建默认纯文本状态视图显示项目
 *
 *  @param containerView 容器视图
 *  @param displayText   显示的文字
 *
 *  @return
 */
+ (LFPageInformationDisplayItem *)createDefaultPlainTextDisplayItemWithContainerView:(UIView *)containerView
                                                                         displayText:(NSString *)displayText;

/**
 *  创建默认无数据状态视图显示项目
 *
 *  @param containerView                容器视图
 *  @param displayText                  显示的文字，如果为`nil`则不显示文字
 *  @param displayActionButtonWithTitle 显示的操作按钮文字，如果按钮文字为`nil`，则不显示按钮
 *
 *  @return
 */
+ (LFPageInformationDisplayItem *)createDefaultNoDataDisplayItemWithContainerView:(UIView *)containerView
                                                                      displayText:(NSString *)displayText
                                                     displayActionButtonWithTitle:(NSString *)displayActionButtonWithTitle;

/**
 *  创建默认全页状态视图显示项目
 *
 *  @param containerView                    容器视图
 *  @param displayImage                     显示的图片，如果为`nil`则不显示图片
 *  @param displayText                      显示的文字，如果为`nil`则不显示文字
 *  @param displayActionButtonWithTitle     显示的操作按钮文字，如果按钮文字为`nil`，则不显示按钮
 *
 *  @return
 */
+ (LFPageInformationDisplayItem *)createDefaultDisplayItemWithContainerView:(UIView *)containerView
                                                               displayImage:(UIImage *)displayImage
                                                                displayText:(NSString *)displayText
                                               displayActionButtonWithTitle:(NSString *)displayActionButtonWithTitle;

@end
