//
//  UITextField+RYNumberKeyboard.h
//  RYNumberKeyboardDemo
//
//  Created by Resory on 16/2/21.
//  Copyright © 2016年 Resory. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RYNumberKeyboard.h"

@interface UITextField (RYNumberKeyboard)

@property (nonatomic, assign) RYInputType ry_inputType;     // 键盘类型
@property (nonatomic, assign) NSInteger ry_interval;        // 每隔多少个数字空一格
@property (nonatomic, copy) NSString *ry_inputAccessoryText;  // inputAccessoryView显示的文字

@end


