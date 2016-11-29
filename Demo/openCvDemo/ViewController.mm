//
//  ViewController.m
//  openCvDemo
//
//  Created by Zhangcoco on 16/11/29.
//  Copyright © 2016年 tao. All rights reserved.
//

#import "ViewController.h"
#import "TTImageBlurryEvaluation.hpp"

@interface ViewController (){
    int _pic;
}

@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@property (weak, nonatomic) IBOutlet UITextField *fuzzyValueField;

@property (weak, nonatomic) IBOutlet UILabel *fuzzyText;

- (IBAction)nextImg:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _pic = 1;
    
    NSString * picName = [NSString stringWithFormat:@"%d",_pic];
    UIImage * img = [UIImage imageNamed:picName];
    
    self.imageView.image = img;
    
    if ([OpenCVExtension whetherTheImageBlurry:img]) {
        self.fuzzyText.text = @"清晰";
    }else{
        self.fuzzyText.text = @"模糊";
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)nextImg:(id)sender {
    ++_pic;
    if (_pic > 3) {
        _pic = 1;
    }
    NSString * picName = [NSString stringWithFormat:@"%d",_pic];
    UIImage * img = [UIImage imageNamed:picName];
    
    self.imageView.image = img;
    
    if ([OpenCVExtension whetherTheImageBlurry:img]) {
        self.fuzzyText.text = @"清晰";
    }else{
        self.fuzzyText.text = @"模糊";
    }
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}
@end
