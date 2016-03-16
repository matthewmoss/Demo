//
//  TestViewController.m
//  Demo
//
//  Created by Matt Moss on 3/16/16.
//  Copyright © 2016 beFerris Inc. All rights reserved.
//

#import "TestViewController.h"
#import "DetailsViewController.h"

@interface TestViewController ()

@end

@implementation TestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Background Color
    self.view.backgroundColor = [UIColor whiteColor];
    
    // Navigation bar
    self.navigationItem.title = @"Test";
    
    // Square
    UIView *square = [[UIView alloc] initWithFrame:CGRectMake(70, 200, 50, 50)];
    square.backgroundColor = [UIColor redColor];
    [self.view addSubview:square];
    
    // Circle
    UIView *circle = [[UIView alloc] initWithFrame:CGRectMake(200, 400, 60, 60)];
    circle.backgroundColor = [UIColor greenColor];
    circle.layer.cornerRadius = circle.frame.size.width / 2;
    [self.view addSubview:circle];
    
    // Label
    UILabel *testLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 100, 100, 30)];
    testLabel.font = [UIFont fontWithName:@"HelveticaNeue" size:20]; // Defaults to San Francisco if you don't specify a font
    testLabel.textColor = [UIColor redColor];
    testLabel.text = @"A label";
    [self.view addSubview:testLabel];
    
    // Button
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(60, 600, 100, 30)];
    [button setTitle:@"Press me!" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [button setTitle:@"Pressed!" forState:UIControlStateHighlighted];
    [button setTitleColor:[UIColor greenColor] forState:UIControlStateHighlighted];
    
    // This part adds the action for the button. When tapped, the method 'testSelected' will be called. Touch Up Inside is normally the best event to listen for. The self tells it to call the 'testSelected' method in this view controlelr
    [button addTarget:self action:@selector(testSelected) forControlEvents:UIControlEventTouchUpInside]; // I like touch up inside no
    [self.view addSubview:button];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)testSelected;
{
    NSLog(@"Did select test!");
    
    // We are going to create an instance of the details view controller
    DetailsViewController *detailsViewController = [[DetailsViewController alloc] init];
    [self.navigationController pushViewController:detailsViewController animated:YES];
}

@end
