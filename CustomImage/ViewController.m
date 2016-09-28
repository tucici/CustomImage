//
//  ViewController.m
//  CustomImage
//
//  Created by mac1 on 16/9/28.
//  Copyright © 2016年 Tucici. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+Scale.h"
@interface ViewController ()
{
    UIImageView * _imgView1;
    UIImageView * _imgView2;
    UIView * _view1;
    UIView * _view2;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor whiteColor]];
    /*initializeViews*/
    [self initializeView];
    
    /*initializeImgViews*/
    [self initializeImgView];
    
    /*initializeButtons*/
    [self initializeButton];
    // Do any additional setup after loading the view, typically from a nib.
}
-(void)initializeView{
    CGFloat width = self.view.frame.size.width;
    _view1 = [[UIView alloc]initWithFrame:CGRectMake(0.0, 100, width * 0.5, width * 0.5)];
    [_view1 setBackgroundColor:[UIColor redColor]];
    [self.view addSubview:_view1];
    
    _view2 = [[UIView alloc]initWithFrame:CGRectMake(width * 0.5, 100, width * 0.5, width * 0.5)];
    [_view2 setBackgroundColor:[UIColor greenColor]];
    [self.view addSubview:_view2];
    
}
-(void)initializeImgView{
    _imgView1 = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0.0, 0.0, 0.0)];
    [_view1 addSubview:_imgView1];
    
    _imgView2 = [[UIImageView alloc]initWithFrame:CGRectMake(0.0, 0.0, 0.0, 0.0)];
    [_view2 addSubview:_imgView2];
}
-(void)initializeButton{
    UIButton *button = [[UIButton alloc]initWithFrame:CGRectMake(20, 400, 60, 40)];
    [button setTitle:@"click" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
    [button setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [button setBackgroundColor:[UIColor purpleColor]];
    [self.view addSubview:button];
    
    UIButton *button2 = [[UIButton alloc]initWithFrame:CGRectMake(200, 400, 60, 40)];
    [button2 setTitle:@"again" forState:UIControlStateNormal];
    [button2 addTarget:self action:@selector(again:) forControlEvents:UIControlEventTouchUpInside];
    [button2 setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [button2 setBackgroundColor:[UIColor purpleColor]];
    [self.view addSubview:button2];
    
}
-(void)click:(UIButton *)sender{
    if (!sender.selected) {
        UIImage *image = [UIImage imageNamed:@"psu"];/*pixel(width * height : 640 * 480)*/
        [_imgView1 setImage:image];
        CGRect rect = [image sizefromImage:image scaledToRect:_view1.frame];
        [_imgView1 setFrame:rect];
        [_imgView1 setNeedsDisplay];
        
    }else{
        UIImage *image = [UIImage imageNamed:@"1"];/*pixel(width * height : 440 * 662)*/
        [_imgView1 setImage:image];
        CGRect rect = [image sizefromImage:image scaledToRect:_view1.frame];
        [_imgView1 setFrame: rect];
        [_imgView1 setNeedsDisplay];
        
    }
    
    sender.selected = !sender.selected;
    
}
-(void)again:(UIButton *)sender{
    if (!sender.selected) {
        UIImage *image = [UIImage imageNamed:@"2"];/*pixel(width * height : 520 * 334)*/
        [_imgView2 setImage:image];
        CGRect rect = [image sizefromImage:image scaledToRect:_view2.frame];
        [_imgView2 setFrame:rect];
        [_imgView2 setNeedsDisplay];
        
    }else{
        UIImage *image = [UIImage imageNamed:@"1"];/*pixel(width * height : 440 * 662)*/
        [_imgView2 setImage:image];
        CGRect rect  = [image sizefromImage:image scaledToRect:_view2.frame];
        [_imgView2 setFrame:rect];
        [_imgView2 setNeedsDisplay];
        
    }
    
    sender.selected = !sender.selected;
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
