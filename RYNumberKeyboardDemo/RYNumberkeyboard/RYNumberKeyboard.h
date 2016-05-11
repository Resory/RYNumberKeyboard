//
//  RYNumberKeyBoard.h
//  RYNumberKeyboardDemo
//
//  Created by Resory on 16/2/20.
//  Copyright © 2016年 Resory. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, RYInputType) {
    RYIntInputType,        // 整数键盘
    RYFloatInputType,      // 浮点数键盘
    RYIDCardInputType,     // 身份证键盘
};

@interface RYNumberKeyboard : UIView

@property (nonatomic, strong) UITextField *textFiled;
@property (nonatomic, assign) RYInputType inputType;

- (id)initWithInputType:(RYInputType)inputType;

@end
