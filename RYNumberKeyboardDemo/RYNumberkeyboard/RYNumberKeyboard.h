//
//  RYNumberKeyBoard.h
//  RYNumberKeyboardDemo
//
//  Created by Resory on 16/2/20.
//  Copyright © 2016年 Resory. All rights reserved.
//

#import <UIKit/UIKit.h>

#define SYS_DEVICE_WIDTH    ([[UIScreen mainScreen] bounds].size.width)                 //屏幕宽度
#define SYS_DEVICE_HEIGHT   ([[UIScreen mainScreen] bounds].size.height)                //屏幕长度

typedef NS_ENUM(NSUInteger, RYInputType) {
    RYIntInputType,        // 整数键盘
    RYFloatInputType,      // 浮点数键盘
    RYIDCardInputType,     // 身份证键盘
};

@interface RYNumberKeyboard : UIView

@property (nonatomic, weak) UITextField<UITextInput> *textInput;
@property (nonatomic, assign) RYInputType inputType;        // 键盘类型
@property (nonatomic, strong) NSNumber *interval;           // 每隔多少个数字空一格

- (id)initWithInputType:(RYInputType)inputType;


@end
