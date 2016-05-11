//
//  RYNumberKeyBoard.m
//  RYNumberKeyboardDemo
//
//  Created by Resory on 16/2/20.
//  Copyright © 2016年 Resory. All rights reserved.
//

#import "RYNumberkeyboard.h"

#define SYS_DEVICE_WIDTH    ([[UIScreen mainScreen] bounds].size.width)                 //屏幕宽度
#define SYS_DEVICE_HEIGHT   ([[UIScreen mainScreen] bounds].size.height)                //屏幕长度

@interface RYNumberKeyboard ()<UIKeyInput>

@property (strong, nonatomic) IBOutlet UIView *keyboardView;
@property (weak, nonatomic) IBOutlet UIButton *deleteBtn;
@property (nonatomic, weak) UITextField<UITextInput> *textInput;

@end

@implementation RYNumberKeyboard

- (id)initWithInputType:(RYInputType)inputType
{
    self = [super init];
    
    if(self)
    {
        
        // 通知
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(editingDidBegin:)
                                                     name:UITextFieldTextDidBeginEditingNotification
                                                   object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(editingDidEnd:)
                                                     name:UITextFieldTextDidEndEditingNotification
                                                   object:nil];
        
        // 添加keyboardview
        [[NSBundle mainBundle] loadNibNamed:@"RYNumberKeyboard" owner:self options:nil];
        self.frame = CGRectMake(0, 0, SYS_DEVICE_WIDTH, 216);
        self.keyboardView.frame = self.frame;
        [self addSubview:self.keyboardView];
        
        // 设置图片
        [self.deleteBtn setImage:[UIImage imageNamed:@"RYNumbeKeyboard.bundle/image/delete.png"]
                        forState:UIControlStateNormal];
        
        self.inputType = inputType;
    }
    
    return self;
}

- (void)setInputType:(RYInputType)inputType
{
    UIButton *xBtn = [self viewWithTag:1011];
    UIButton *dotBtn = [self viewWithTag:1010];
    
    switch (inputType)
    {
        // 浮点数键盘
        case RYFloatInputType:
        {
            xBtn.hidden = YES;
            dotBtn.hidden = NO;
            break;
        }
        // 身份证键盘
        case RYIDCardInputType:
        {
            xBtn.hidden = NO;
            dotBtn.hidden = YES;
            break;
        }
        // 数字键盘
        default:
        {
            xBtn.hidden = YES;
            dotBtn.hidden = YES;
            break;
        }
    }
}

- (IBAction)keyboardViewAction:(UIButton *)sender
{
    NSInteger tag = sender.tag;
    
    switch (tag)
    {
        case 1010:
        {
            // 小数点
            if(self.textInput.text.length > 0 && ![self.textInput.text containsString:@"."])
                [self.textInput insertText:@"."];
        }
            break;
        case 1011:
        {
            // 身份证X
            if(self.textInput.text.length > 0 && ![self.textInput.text containsString:@"X"])
                [self.textInput insertText:@"X"];
        }
            break;
        case 1012:
        {
            // 删除
            if(self.textInput.text.length > 0)
                [self.textInput deleteBackward];
        }
            break;
        case 1013:
        {
            // 确认
            [self.textInput resignFirstResponder];
        }
            break;
        default:
        {
            // 数字
            NSString *text = [NSString stringWithFormat:@"%ld",sender.tag - 1000];
            [self.textInput insertText:text];
        }
            break;
    }
}

#pragma mark -
#pragma mark - Notification Action
- (void)editingDidBegin:(NSNotification *)notification {
    if (![notification.object conformsToProtocol:@protocol(UITextInput)])
    {
        self.textInput = nil;
        return;
    }
    self.textInput = notification.object;
}

- (void)editingDidEnd:(NSNotification *)notification
{
    self.textInput = nil;
}

#pragma mark -
#pragma mark - UIKeyInput Protocol


/*
 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 - (void)drawRect:(CGRect)rect {
 // Drawing code
 }
 */

@end
