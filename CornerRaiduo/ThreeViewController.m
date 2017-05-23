//
//  ThreeViewController.m
//  CornerRaiduo
//
//  Created by tongle on 2017/5/23.
//  Copyright © 2017年 tong. All rights reserved.
//

#import "ThreeViewController.h"

@interface ThreeViewController ()
@property (nonatomic,strong)UIView * bottomView;

@end

@implementation ThreeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor blueColor];
    self.navigationItem.title = @"ThreeViewController";
    
    UIButton  * leftShowBtn = [[UIButton alloc]initWithFrame:CGRectMake(0, self.view.frame.size.height / 2 - 100,50, 100)];
    leftShowBtn.backgroundColor =[UIColor greenColor];
    [leftShowBtn addTarget:self action:@selector(leftShow) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:leftShowBtn];
    
    UIButton  * leftMissBtn = [[UIButton alloc]initWithFrame:CGRectMake(0, self.view.frame.size.height / 2 ,50, 100)];
    leftMissBtn.backgroundColor =[UIColor redColor];
    [leftMissBtn addTarget:self action:@selector(leftMiss) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:leftMissBtn];
    // Do any additional setup after loading the view.
}
-(UIView *)bottomView{
    if (_bottomView==nil) {
        _bottomView = [[UIView alloc]init];
        _bottomView.backgroundColor = [UIColor purpleColor];
        [self.view addSubview:_bottomView];
    }
    return _bottomView;
}
-(void)leftShow{
    self.bottomView.frame = CGRectMake(self.view.frame.size.width, 150, self.view.frame.size.width-40, 400);
    [UIView animateWithDuration:.5 animations:^{
        CGRect rect = self.bottomView.frame;
        rect.origin.x -= self.view.frame.size.width-40;
        self.bottomView.frame = rect;
    } completion:^(BOOL finished) {
        NSLog(@"leftShow");
        
    }];
}
-(void)leftMiss{
    [UIView animateWithDuration:.5 animations:^{
        CGRect rect = self.bottomView.frame;
        rect.origin.x += self.view.frame.size.width-40;
        self.bottomView.frame = rect;
    } completion:^(BOOL finished) {
        NSLog(@"leftMiss");
    }];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
