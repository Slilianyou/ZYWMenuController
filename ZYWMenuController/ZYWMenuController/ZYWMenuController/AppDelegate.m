//
//  AppDelegate.m
//  ZYWMenuController
//
//  Created by yearwen on 16/7/24.
//  Copyright © 2016年 yearwen. All rights reserved.
//

#import "AppDelegate.h"
#import "ZYWMenuViewController.h"
#import "HomeViewController.h"

#import "NewsViewController.h"
#import "IssueViewController.h"
#import "FindViewController.h"
#import "PersonViewController.h"
#import "SettingViewController.h"



@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    HomeViewController * home = [[HomeViewController alloc]init];
    UINavigationController * homeNav = [[UINavigationController alloc]initWithRootViewController:home];
    
    NewsViewController * news = [[NewsViewController alloc]init];
    news.title = @"消息";
    UINavigationController * newsNav = [[UINavigationController alloc]initWithRootViewController:news];
    
    IssueViewController * issue = [[IssueViewController alloc]init];
    issue.title = @"发布";
    UINavigationController  * issueNav = [[UINavigationController alloc]initWithRootViewController:issue];
    
    FindViewController * find = [[FindViewController alloc]init];
    find.title = @"发现";
    UINavigationController * findNav = [[UINavigationController alloc]initWithRootViewController:find];
    
    PersonViewController * person = [[PersonViewController alloc]init];
    person.title = @"个人";
    UINavigationController * personNav = [[UINavigationController alloc]initWithRootViewController:person];
    
    SettingViewController  * setting = [[SettingViewController alloc]init];
    setting.title = @"设置";
    UINavigationController * settingNav = [[UINavigationController alloc]initWithRootViewController:setting];
    
    NSArray * viewArr = @[homeNav,newsNav,issueNav,findNav,personNav,settingNav];
    

    ZYWMenuViewController * new = [[ZYWMenuViewController alloc]initWithFrontView:homeNav AndButtonTitleArr:@[@"首页",@"消息",@"发布",@"发现",@"个人",@"设置"]];
    new.viewControllersArr = viewArr;
    UINavigationController * nav =[[UINavigationController alloc]initWithRootViewController:new];
    [self.window setRootViewController:nav];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
