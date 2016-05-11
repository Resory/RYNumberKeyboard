//
//  UITextField+RYNumberKeyboard.m
//  RYNumberKeyboardDemo
//
//  Created by Resory on 16/2/21.
//  Copyright © 2016年 Resory. All rights reserved.
//

#import "UITextField+RYNumberKeyboard.h"
#import <objc/runtime.h>

@implementation UITextField (RYNumberKeyboard)

- (void)setRy_inputType:(RYInputType)ry_inputType
{
    RYNumberKeyboard *inputView = [[RYNumberKeyboard alloc] initWithInputType:ry_inputType];
    self.inputView = inputView;
    objc_setAssociatedObject(self, _cmd, @(ry_inputType), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (RYInputType)ry_inputType
{
    return [objc_getAssociatedObject(self, @selector(setRy_inputType:)) integerValue];
}

@end
