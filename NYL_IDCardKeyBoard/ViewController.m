//
//  ViewController.m
//  NYL_IDCardKeyBoard
//
//  Created by 聂银龙 on 2017/9/8.
//  Copyright © 2017年 聂银龙. All rights reserved.
//

#import "ViewController.h"
#import "NYLIDKeyBoard.h"
// 屏幕高度
#define SCREEN_HEIGHT         [[UIScreen mainScreen] bounds].size.height
// 屏幕宽度
#define SCREEN_WIDTH          [[UIScreen mainScreen] bounds].size.width
#define GETSIZE(num)   (SCREEN_WIDTH/375*num)

@interface ViewController ()<NYKIDKeyBoardDelegate>

@property (weak, nonatomic) IBOutlet UITextField *textField;
@property(nonatomic, strong) NYLIDKeyBoard *idKeyBoard;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    // 设置自定义键盘
    self.textField.inputView = self.idKeyBoard;
    
    
}




#pragma mark -  输入代理回调
- (void)idKeyboard:(NYLIDKeyBoard *)idKeyboard inputSring:(NSMutableString *)inputString {
    
    _textField.text = inputString;
    
}


- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.textField resignFirstResponder];
}


// 身份证键盘
- (NYLIDKeyBoard *)idKeyBoard {
    if (!_idKeyBoard) {
        _idKeyBoard = [[NYLIDKeyBoard alloc] initWithFrame:CGRectMake(0, SCREEN_HEIGHT - GETSIZE(216), SCREEN_WIDTH, GETSIZE(216) )];
        _idKeyBoard.delegate = self;
        
    }
    return _idKeyBoard;
}






- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
