//
//  TwoViewController.m
//  CornerRaiduo
//
//  Created by tongle on 2017/5/23.
//  Copyright © 2017年 tong. All rights reserved.
//

#import "TwoViewController.h"

@interface TwoViewController ()
@property (nonatomic,strong)UIView * bottomView;
@end

@implementation TwoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor greenColor];
    self.navigationItem.title= @"TwoViewController";
    UIButton  * orangeButton = [[UIButton alloc]initWithFrame:CGRectMake(self.view.frame.size.width / 2-100, 60, 100, 50)];
    orangeButton.backgroundColor =[UIColor redColor];
    [orangeButton addTarget:self action:@selector(bottomShow) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:orangeButton];
    
    UIButton  * blueButton = [[UIButton alloc]initWithFrame:CGRectMake(self.view.frame.size.width / 2, 60, 100, 50)];
    blueButton.backgroundColor =[UIColor blueColor];
    [blueButton addTarget:self action:@selector(bottomMiss) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:blueButton];
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
-(void)bottomShow{
    self.bottomView.frame = CGRectMake(20, self.view.frame.size.height, self.view.frame.size.width-40, self.view.frame.size.height-100);
    [UIView animateWithDuration:.5 animations:^{
        CGRect rect = self.bottomView.frame;
        rect.origin.y -= 400;
        self.bottomView.frame = rect;
    } completion:^(BOOL finished) {
        NSLog(@"bottomShow");
    }];
}
-(void)bottomMiss{
    [UIView animateWithDuration:.5 animations:^{
        CGRect rect = self.bottomView.frame;
        rect.origin.y += 400;
        self.bottomView.frame = rect;
    } completion:^(BOOL finished) {
        NSLog(@"bottomMiss");
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
