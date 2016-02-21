//
//  UITextField+RYNumberKeyboard.m
//  RYNumberKeyboardDemo
//
//  Created by Resory on 16/2/21.
//  Copyright © 2016年 Resory. All rights reserved.
//

#import "UITextField+RYNumberKeyboard.h"
#import "RYNumberKeyboard.h"

@implementation UITextField (RYNumberKeyboard)

- (void)setKeyboardType:(UIKeyboardType)keyboardType
{
    if(keyboardType == UIKeyboardTypeNumberPad)
    {
        RYNumberKeyboard *tNumberKb = [[RYNumberKeyboard alloc] init];
        tNumberKb.textFiled = self;
        self.inputView = tNumberKb;
    }
}

@end
