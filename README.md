# RYNumberKeyboard

`RYNumberKeyboard` 是一个数字相关键盘，目前有三种类型：整数键盘，浮点数键盘，身份证键盘。

# 使用方法

```
  #import "UITextField+RYNumberKeyboard.h"
  
  yourTextFiled.ry_inputType = RYIntInputType;       //数字键盘
  yourTextFiled.ry_inputType = RYIDCardInputType;    //身份证键盘
  yourTextFiled.ry_inputType = RYFloatInputType;     //浮点数键盘
  
  yourTextFiled.ry_interval = 4  //每隔4个数字输入一个空格
```

# 效果

![RYNumberKeyboard](https://github.com/Resory/Images/blob/master/RYNumberKeyboard.gif)
