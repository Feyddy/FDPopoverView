//
//  FDPopoverAction.m
//  FDPopover
//
//  Created by t3 on 16/12/29.
//  Copyright © 2016年 feyddy. All rights reserved.
//

#import "FDPopoverAction.h"

@interface FDPopoverAction ()

@property (nonatomic, strong, readwrite) UIImage *image; ///< 图标
@property (nonatomic, copy, readwrite) NSString *title; ///< 风格
@property (nonatomic, copy, readwrite) void(^handler)(FDPopoverAction *action); ///< 选择回调

@end

@implementation FDPopoverAction

+ (instancetype)actionWithTitle:(NSString *)title handler:(void (^)(FDPopoverAction *action))handler {
    return [self actionWithImage:nil title:title handler:handler];
}

+ (instancetype)actionWithImage:(UIImage *)image title:(NSString *)title handler:(void (^)(FDPopoverAction *action))handler {
    FDPopoverAction *action = [[self alloc] init];
    action.image = image;
    action.title = title ? : @"";
    action.handler = handler ? : NULL;
    
    return action;
}


@end
