//
//  ViewController.m
//  MyScrollView
//
//  Created by Carl Udren on 1/25/16.
//  Copyright © 2016 Carl Udren. All rights reserved.
//

#import "ViewController.h"
#import "MyScrollView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    MyScrollView *container = [MyScrollView newMyScrollViewWith];
    container.frame = CGRectMake(0, 0, 400, 750);
    container.contentSize = CGSizeMake(300, 750);
    [self.view addSubview:container];
    
    //red
    UIView *red = [[UIView alloc] initWithFrame:CGRectMake(20, 20, 100, 100)];
    red.backgroundColor = [UIColor redColor];
    [container addSubview:red];
    
    //green
    UIView *green = [[UIView alloc] initWithFrame:CGRectMake(150, 150, 150, 200)];
    green.backgroundColor = [UIColor greenColor];
    [container addSubview:green];
    //blue
    UIView *blue = [[UIView alloc] initWithFrame:CGRectMake(40, 400, 200, 150)];
    blue.backgroundColor = [UIColor blueColor];
    [container addSubview:blue];
    
    //yellow
    UIView *yellow = [[UIView alloc] initWithFrame:CGRectMake(100, 600, 180, 150)];
    yellow.backgroundColor = [UIColor yellowColor];
    [container addSubview:yellow];
    
   
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
