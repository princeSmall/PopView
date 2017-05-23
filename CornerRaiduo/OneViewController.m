//
//  OneViewController.m
//  CornerRaiduo
//
//  Created by tongle on 2017/5/23.
//  Copyright © 2017年 tong. All rights reserved.
//

#import "OneViewController.h"

@interface OneViewController ()
@property (nonatomic,strong)UIView * centerView;

@end

@implementation OneViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
    self.navigationItem.title = @"OneViewController";
    
    UIButton  * orangeButton = [[UIButton alloc]initWithFrame:CGRectMake(self.view.frame.size.width / 2-50, 60, 100, 50)];
    orangeButton.backgroundColor =[UIColor orangeColor];
    [orangeButton addTarget:self action:@selector(centerShowAndMiss) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:orangeButton];

    // Do any additional setup after loading the view.
}
-(UIView *)centerView{
    if (_centerView==nil) {
        _centerView = [[UIView alloc]init];
        _centerView.backgroundColor = [UIColor orangeColor];
        [self.view addSubview:_centerView];
    }
    return _centerView;
}
-(void)centerShowAndMiss{
    self.centerView.center = self.view.center;
    [UIView animateWithDuration:.5 animations:^{
        
        CGRect p = self.centerView.frame;
        p.size.height -= 400;
        p.size.width -= 300;
        self.centerView.frame=p;
        self.centerView.center = self.view.center;
        
    } completion:^(BOOL finished) {
        NSLog(@"redShow");
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
