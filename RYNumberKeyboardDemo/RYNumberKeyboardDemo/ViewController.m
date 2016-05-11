//
//  ViewController.m
//  RYNumberKeyboardDemo
//
//  Created by Resory on 16/2/21.
//  Copyright © 2016年 Resory. All rights reserved.
//

#import "ViewController.h"
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
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
