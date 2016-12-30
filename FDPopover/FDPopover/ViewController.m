//
//  ViewController.m
//  FDPopover
//
//  Created by t3 on 16/12/29.
//  Copyright © 2016年 feyddy. All rights reserved.
//

#import "ViewController.h"
#import "FDPopoverView.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *noticeLabel;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (NSArray<FDPopoverAction *> *)QQActions {
    // 发起多人聊天 action
    FDPopoverAction *multichatAction = [FDPopoverAction actionWithImage:[UIImage imageNamed:@"right_menu_multichat"] title:@"发起多人聊天" handler:^(FDPopoverAction *action) {
#pragma mark - 该Block不会导致内存泄露, Block内代码无需刻意去设置弱引用.
        _noticeLabel.text = action.title;
    }];
    // 加好友 action
    FDPopoverAction *addFriAction = [FDPopoverAction actionWithImage:[UIImage imageNamed:@"right_menu_addFri"] title:@"加好友" handler:^(FDPopoverAction *action) {
        _noticeLabel.text = action.title;
    }];
    // 扫一扫 action
    FDPopoverAction *QRAction = [FDPopoverAction actionWithImage:[UIImage imageNamed:@"right_menu_QR"] title:@"扫一扫" handler:^(FDPopoverAction *action) {
        _noticeLabel.text = action.title;
    }];
    // 面对面快传 action
    FDPopoverAction *facetofaceAction = [FDPopoverAction actionWithImage:[UIImage imageNamed:@"right_menu_facetoface"] title:@"面对面快传" handler:^(FDPopoverAction *action) {
        _noticeLabel.text = action.title;
    }];
    // 付款 action
    FDPopoverAction *payMoneyAction = [FDPopoverAction actionWithImage:[UIImage imageNamed:@"right_menu_payMoney"] title:@"付款" handler:^(FDPopoverAction *action) {
        _noticeLabel.text = action.title;
    }];
    
    return @[multichatAction, addFriAction, QRAction, facetofaceAction, payMoneyAction];
}

- (IBAction)buttonAction:(UIButton *)sender {
    FDPopoverView *fdPopoverView = [FDPopoverView popoverView];
    [fdPopoverView showToView:sender withActions:[self QQActions]];
}

- (IBAction)leftBarItemAction:(UIBarButtonItem *)sender {
    FDPopoverAction *action1 = [FDPopoverAction actionWithImage:[UIImage imageNamed:@"contacts_add_newmessage"] title:@"发起群聊" handler:^(FDPopoverAction *action) {
        _noticeLabel.text = action.title;
    }];
    FDPopoverAction *action2 = [FDPopoverAction actionWithImage:[UIImage imageNamed:@"contacts_add_friend"] title:@"添加朋友" handler:^(FDPopoverAction *action) {
        _noticeLabel.text = action.title;
    }];
    FDPopoverAction *action3 = [FDPopoverAction actionWithImage:[UIImage imageNamed:@"contacts_add_scan"] title:@"扫一扫" handler:^(FDPopoverAction *action) {
        _noticeLabel.text = action.title;
    }];
    FDPopoverAction *action4 = [FDPopoverAction actionWithImage:[UIImage imageNamed:@"contacts_add_money"] title:@"收付款" handler:^(FDPopoverAction *action) {
        _noticeLabel.text = action.title;
    }];
    
    FDPopoverView *fdPopoverView = [FDPopoverView popoverView];
    fdPopoverView.style = PopoverViewStyleDark;
    // 在没有系统控件的情况下调用可以使用显示在指定的点坐标的方法弹出菜单控件.
    [fdPopoverView showToPoint:CGPointMake(20, 64) withActions:@[action1, action2, action3, action4]];
}

- (IBAction)rightButtonAction:(UIButton *)sender {
    FDPopoverView *fdPopoverView = [FDPopoverView popoverView];
    fdPopoverView.showShade = YES; // 显示阴影背景
    [fdPopoverView showToView:sender withActions:[self QQActions]];
}

- (IBAction)showWithoutImage:(UIButton *)sender {
    // 不带图片
    FDPopoverAction *action1 = [FDPopoverAction actionWithTitle:@"加好友" handler:^(FDPopoverAction *action) {
        _noticeLabel.text = action.title;
    }];
    FDPopoverAction *action2 = [FDPopoverAction actionWithTitle:@"扫一扫" handler:^(FDPopoverAction *action) {
        _noticeLabel.text = action.title;
    }];
    FDPopoverAction *action3 = [FDPopoverAction actionWithTitle:@"发起聊天" handler:^(FDPopoverAction *action) {
        _noticeLabel.text = action.title;
    }];
    FDPopoverAction *action4 = [FDPopoverAction actionWithTitle:@"发起群聊" handler:^(FDPopoverAction *action) {
        _noticeLabel.text = action.title;
    }];
    FDPopoverAction *action5 = [FDPopoverAction actionWithTitle:@"查找群聊" handler:^(FDPopoverAction *action) {
        _noticeLabel.text = action.title;
    }];
    FDPopoverAction *action6 = [FDPopoverAction actionWithTitle:@"我的群聊" handler:^(FDPopoverAction *action) {
        _noticeLabel.text = action.title;
    }];
    
    FDPopoverView *fdPopoverView = [FDPopoverView popoverView];
    fdPopoverView.style = PopoverViewStyleDark;
    fdPopoverView.hideAfterTouchOutside = NO; // 点击外部时不允许隐藏
    [fdPopoverView showToView:sender withActions:@[action1, action2, action3, action4, action5, action6]];
}

@end
