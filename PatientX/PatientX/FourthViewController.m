//
//  FourthViewController.m
//  PatientX
//
//  Created by New User on 11/14/14.
//  Copyright (c) 2014 Team4. All rights reserved.
//

#import "FourthViewController.h"

@interface FourthViewController ()

@property (weak, nonatomic) IBOutlet TEABarChart *barChart;
@end

@implementation FourthViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [Scroller setScrollEnabled:YES];
    [Scroller setContentSize:(CGSizeMake(320, 1000))];
    
    // Line chart, the Storyboard way
    self.barChart.data = @[@3, @1, @4, @1, @5, @9, @2, @6, @5, @3];
    self.barChart.barSpacing = 10;
    self.barChart.barColors = @[[UIColor orangeColor], [UIColor yellowColor], [UIColor greenColor], [UIColor blueColor]];

    // Do any additional setup after loading the view.
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
