//
//  ViewController.m
//  RYNumberKeyboardDemo
//
//  Created by Resory on 16/2/21.
//  Copyright © 2016年 Resory. All rights reserved.
//

#import "ViewController.h"
#import "RYNumberKeyboard.h"
#import "UITextField+RYNumberKeyboard.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *textFiled;
@property (weak, nonatomic) IBOutlet UITextField *textFiledTwo;
@property (weak, nonatomic) IBOutlet UITextField *textFiledThree;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.textFiled.ry_inputType = RYIntInputType;
    self.textFiledTwo.ry_inputType = RYIDCardInputType;
    self.textFiledThree.ry_inputType = RYFloatInputType;
    
    self.textFiled.ry_interval = 4;
    self.textFiledTwo.ry_interval = 6;
    
    self.textFiled.ry_inputAccessoryText = @"请输入银行卡号";
    self.textFiledTwo.ry_inputAccessoryText = @"请输入身份证号";
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
