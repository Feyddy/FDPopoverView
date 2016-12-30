//
//  FDPopoverViewCell.h
//  FDPopover
//
//  Created by t3 on 16/12/29.
//  Copyright © 2016年 feyddy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FDPopoverAction.h"

UIKIT_EXTERN float const PopoverViewCellHorizontalMargin; ///< 水平间距边距
UIKIT_EXTERN float const PopoverViewCellVerticalMargin; ///< 垂直边距
UIKIT_EXTERN float const PopoverViewCellTitleLeftEdge; ///< 标题左边边距

@class FDPopoverAction;
@interface FDPopoverViewCell : UITableViewCell
@property (nonatomic, assign) PopoverViewStyle style;

/*! @brief 标题字体
 */
+ (UIFont *)titleFont;

/*! @brief 底部线条颜色
 */
+ (UIColor *)bottomLineColorForStyle:(PopoverViewStyle)style;

- (void)setAction:(FDPopoverAction *)action;

- (void)showBottomLine:(BOOL)show;
@end
