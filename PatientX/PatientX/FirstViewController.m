//
//  FirstViewController.m
//  PatientX
//
//  Created by Kelly Inciong on 11/14/14.
//  Copyright (c) 2014 Team4. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [Scroller setScrollEnabled:YES];
    [Scroller setContentSize:(CGSizeMake(320, 1000))];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
