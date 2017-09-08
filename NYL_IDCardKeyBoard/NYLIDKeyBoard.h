//
//  NYLIDKeyBoard.h
//  lqz
//
//  Created by 聂银龙 on 2017/9/7.
//  Copyright © 2017年 lqz. All rights reserved.
//  身份证键盘

#import <UIKit/UIKit.h>

@class NYLIDKeyBoard;

@protocol NYKIDKeyBoardDelegate <NSObject>

@optional

/**
 点击按钮代理回调

 @param idKeyboard 本类
 @param inputString 点击按钮拼接后的字符串
 */
- (void)idKeyboard:(NYLIDKeyBoard *)idKeyboard  inputSring:(NSMutableString *)inputString;

@end

@interface NYLIDKeyBoard : UIView

@property(nonatomic, assign) id<NYKIDKeyBoardDelegate>delegate;

// 输入的字符串
@property(nonatomic, strong) NSMutableString *inputString;

@end
