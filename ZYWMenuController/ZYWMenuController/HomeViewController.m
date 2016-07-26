//
//  HomeViewController.m
//  ZYWMenuController
//
//  Created by yearwen on 16/7/24.
//  Copyright © 2016年 yearwen. All rights reserved.
//

#import "HomeViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor blueColor];
    self.title = @"首页";
    
    [self creatPushButton];
}

-(void)creatPushButton{
    UIButton * push = [UIButton buttonWithType:UIButtonTypeSystem];
    push.frame = CGRectMake(100, 100, 40, 50);
    [push setTitle:@"push" forState:UIControlStateNormal];
    [push addTarget:self action:@selector(pushToSelf) forControlEvents:UIControlEventTouchUpInside];
    [push setTintColor:[UIColor redColor]];
    [self.view addSubview:push];
}

-(void)pushToSelf{
    HomeViewController * home = [[HomeViewController alloc]init];
    [self.navigationController pushViewController:home animated:YES];
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
