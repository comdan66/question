//
//  MyTabBarController.m
//  question
//
//  Created by OA Wu on 2015/6/25.
//  Copyright (c) 2015年 OA Wu. All rights reserved.
//

#import "MyTabBarController.h"

@interface MyTabBarController ()

@end

@implementation MyTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    for (int i = 0; i < [self.tabBar.items count]; i++) {
        UITabBarItem * tabItem = [self.tabBar.items objectAtIndex:i];
        [tabItem setImageInsets:UIEdgeInsetsMake(6, 0, -6, 0)];
        [tabItem setImage:[[UIImage imageNamed:[NSString stringWithFormat: @"TabBarItem_%02i.png", i]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
        [tabItem setSelectedImage:[[UIImage imageNamed:[NSString stringWithFormat: @"TabBarItem_%02i_on.png", i]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    }
    
    [self.tabBar setBackgroundColor:[UIColor redColor]];
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
