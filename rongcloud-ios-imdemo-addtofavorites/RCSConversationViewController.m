//
//  RCSConversationViewController.m
//  RCSuppportDemo
//
//  Created by 张一帆 on 2020/6/15.
//  Copyright © 2020 RCSupport. All rights reserved.
//

#import "RCSConversationViewController.h"

@interface RCSConversationViewController ()

@property (nonatomic, strong) RCMessageModel *longTouchModel;

@end

@implementation RCSConversationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // 为 UIToolbar 添加收藏按钮
    [self addToolBarBtn];
}

// 获取长按Cell中的消息时的菜单
- (NSArray<UIMenuItem *> *)getLongTouchMessageCellMenuList:(RCMessageModel *)model{
    // 暂存长按消息的 model
    self.longTouchModel = model;
    
    NSArray<UIMenuItem *> *menuList = [super getLongTouchMessageCellMenuList:model];
    
    NSMutableArray *list = menuList.mutableCopy;
    UIMenuItem *addToFavorites = [[UIMenuItem alloc] initWithTitle:@"收藏" action:@selector(onAddToFavorites:)];
    NSInteger count = menuList.count;
    [list insertObject:addToFavorites atIndex:count - 1];
    return list;
}

// 点击收藏后的回调方法
- (void)onAddToFavorites:(id)sender {
    
    self.allowsMessageCellSelection = NO;
}

- (void)addToolBarBtn {
    UIButton *favoriteBtn = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 50, 40)];
    [favoriteBtn setImage:[UIImage imageNamed:@"favorite"] forState:UIControlStateNormal];
    [favoriteBtn addTarget:self action:@selector(onAddToFavorites:) forControlEvents:UIControlEventTouchUpInside];
    
    UIBarButtonItem *favoriteItem = [[UIBarButtonItem alloc] initWithCustomView:favoriteBtn];
    NSArray *items = self.messageSelectionToolbar.items;
    NSMutableArray *tempItems = items.mutableCopy;
    [tempItems addObject:favoriteItem];
    
    UIBarButtonItem *spaceItem =
    [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
    [tempItems addObject:spaceItem];
    
    [self.messageSelectionToolbar setItems:tempItems.copy];
}

@end
