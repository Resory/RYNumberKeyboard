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

@interface RYNumberKeyboard ()

@property (strong, nonatomic) IBOutlet UIView *keyboardView;
@property (weak, nonatomic) IBOutlet UIButton *deleteBtn;
@property (weak, nonatomic) IBOutlet UIButton *resignBtn;


@end

@implementation RYNumberKeyboard

- (id)init
{
    self = [super init];
    
    if(self)
    {
        // 添加keyboardview
        self.frame = CGRectMake(0, 0, SYS_DEVICE_WIDTH, 216);
        [[NSBundle mainBundle] loadNibNamed:@"RYNumberKeyboard" owner:self options:nil];
        self.keyboardView.frame = self.frame;
        [self addSubview:self.keyboardView];
        
        // 设置图片
        [self.deleteBtn setImage:[UIImage imageNamed:@"RYNumbeKeyboard.bundle/image/delete.png"]
                        forState:UIControlStateNormal];
        [self.resignBtn setImage:[UIImage imageNamed:@"RYNumbeKeyboard.bundle/image/resign.png"]
                        forState:UIControlStateNormal];
    }

    return self;
}

/*
    1000->0
    1001->1
    1002->2
    1003->3
    1004->4
    1005->5
    1006->6
    1007->7
    1008->8
    1009->9
    1010->.
    1011->消失
    1012->删除
    1013->确认
 */
- (IBAction)keyboardViewAction:(UIButton *)sender
{
    NSInteger tag = sender.tag;
    
    switch (tag)
    {
        case 1010:
        {
            // 小数点
            if(self.textFiled.text.length > 0 && ![self.textFiled.text containsString:@"."])
                self.textFiled.text = [NSString stringWithFormat:@"%@.",self.textFiled.text];
        }
            break;
        case 1011:
        {
            // 消失
            [self.textFiled resignFirstResponder];
        }
            break;
        case 1012:
        {
            // 删除
            if(self.textFiled.text.length > 0)
                self.textFiled.text = [self.textFiled.text substringWithRange:NSMakeRange(0, self.textFiled.text.length - 1)];
        }
            break;
        case 1013:
        {
            // 确认
            [self.textFiled resignFirstResponder];
        }
            break;
        default:
        {
            // 数字
            self.textFiled.text = [NSString stringWithFormat:@"%@%ld",self.textFiled.text,sender.tag - 1000];
        }
            break;
    }
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
