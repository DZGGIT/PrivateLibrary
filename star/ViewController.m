//
//  ViewController.m
//  star
//
//  Created by shenen on 15/11/18.
//  Copyright © 2015年 cntysoft. All rights reserved.
//

#import "ViewController.h"
#import "showStarsView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    showStarsView *show=[[showStarsView alloc]initWithFrame:CGRectMake(100, 100, 100, 30)];
    [self.view addSubview:show];
    show.score=4.3;
    NSLog(@"showStarqweqweqweqw");
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
