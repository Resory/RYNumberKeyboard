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

#pragma mark -
#pragma mark -  Setter

- (void)setRy_inputType:(RYInputType)ry_inputType
{
    RYNumberKeyboard *inputView = [[RYNumberKeyboard alloc] initWithInputType:ry_inputType];
    inputView.textInput = self;
    self.inputView = inputView;
    objc_setAssociatedObject(self, _cmd, @(ry_inputType), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (void)setRy_interval:(NSInteger)ry_interval
{
    if([self.inputView isKindOfClass:[RYNumberKeyboard class]])
        [self.inputView performSelector:@selector(setInterval:) withObject:@(ry_interval)];
    objc_setAssociatedObject(self, _cmd, @(ry_interval), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (void)setRy_inputAccessoryText:(NSString *)ry_inputAccessoryText
{
    // inputAccessoryView
    UIView *tView = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, SYS_DEVICE_WIDTH, 35)];
    // 顶部分割线
    UIView *tLine = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, SYS_DEVICE_WIDTH, 0.5)];
    tLine.backgroundColor = [UIColor colorWithRed:210/255.0 green:210/255.0 blue:210/255.0 alpha:1.0];
    // 字体label
    UILabel *tLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, SYS_DEVICE_WIDTH, 35)];
    tLabel.text = ry_inputAccessoryText;
    tLabel.textAlignment = NSTextAlignmentCenter;
    tLabel.font = [UIFont systemFontOfSize:14.0];
    tLabel.backgroundColor = [UIColor whiteColor];
    
    [tView addSubview:tLabel];
    [tView addSubview:tLine];
    self.inputAccessoryView = tView;
    objc_setAssociatedObject(self, _cmd, ry_inputAccessoryText, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

#pragma mark -
#pragma mark -  Getter

- (RYInputType)ry_inputType
{
    return [objc_getAssociatedObject(self, @selector(setRy_inputType:)) integerValue];
}

- (NSInteger)ry_interval
{
    return [objc_getAssociatedObject(self, @selector(setRy_interval:)) integerValue];
}

- (NSString *)ry_inputAccessoryText
{
    return objc_getAssociatedObject(self, @selector(ry_inputAccessoryText));
}



@end
