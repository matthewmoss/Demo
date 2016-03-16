//
//  DetailsViewController.m
//  Demo
//
//  Created by Matt Moss on 3/16/16.
//  Copyright © 2016 beFerris Inc. All rights reserved.
//

#import "DetailsViewController.h"

@interface DetailsViewController ()

@end

@implementation DetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Background Color
    self.view.backgroundColor = [UIColor whiteColor];
    
    // Navigation bar
    self.navigationItem.title = @"Details";
    
    // Square
    UIView *square = [[UIView alloc] initWithFrame:CGRectMake(70, 200, 300, 300)];
    square.backgroundColor = [UIColor redColor];
    [self.view addSubview:square];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
