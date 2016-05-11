//
//  UITextField+RYNumberKeyboard.m
//  RYNumberKeyboardDemo
//
//  Created by Resory on 16/2/21.
//  Copyright © 2016年 Resory. All rights reserved.
//

#import "UITextField+RYNumberKeyboard.h"
#import "UITextField_RYProperty.h"
#import "RYNumberKeyboard.h"

@implementation UITextField (RYNumberKeyboard)

-(void)setRy_inputType:(int)ry_inputType
{
    RYNumberKeyboard *inputView = [[RYNumberKeyboard alloc] initWithInputType:ry_inputType];
    self.inputView = inputView;
}

//- (void)setRy_inputType:(RYInputType)ry_inputType
//{
//    objc_setAssociatedObject(self, _cmd, @(ry_inputType), OBJC_ASSOCIATION_ASSIGN);
//}
//
//- (RYInputType)ry_inputType
//{
//    return objc_getAssociatedObject(self, _cmd);
//}

@end
