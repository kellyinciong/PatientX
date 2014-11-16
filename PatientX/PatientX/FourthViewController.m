//
//  FourthViewController.m
//  PatientX
//
//  Created by New User on 11/14/14.
//  Copyright (c) 2014 Team4. All rights reserved.
//

#import "FourthViewController.h"
#import "DataClass.h"

@interface FourthViewController ()

@property (weak, nonatomic) IBOutlet TEABarChart *barChart;
@property (weak, nonatomic) IBOutlet TEABarChart *barChart2;
@property (weak, nonatomic) IBOutlet TEABarChart *barChart4;
@property (weak, nonatomic) IBOutlet TEABarChart *barChart3;
@end

@implementation FourthViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [Scroller setScrollEnabled:YES];
    [Scroller setContentSize:(CGSizeMake(320, 1000))];
    
    DataClass *obj=[DataClass getInstance];

     NSLog(@"The main Array: %@", obj.dataArray);

    
    NSMutableArray *weightArray = [NSMutableArray array];
    NSMutableArray *insulinArray = [NSMutableArray array];
    NSMutableArray *bpArrayHigh = [NSMutableArray array];
    NSMutableArray *bpArrayLow = [NSMutableArray array];
    
    for( int i = 0; i < 10; i++ )
    {
        NSArray *tempArray =[obj.dataArray[i][2] componentsSeparatedByString:@"/"];
        [weightArray addObject: [NSNumber  numberWithInt:[obj.dataArray[i][1] intValue]]];
        [insulinArray addObject: [NSNumber  numberWithInt:[obj.dataArray[i][3] intValue]]];
        [bpArrayHigh addObject: [NSNumber  numberWithInt:[tempArray[0] intValue]]];
        [bpArrayLow addObject: [NSNumber  numberWithInt:[tempArray[1] intValue]]];
    }
    
    
    // Line chart, the Storyboard way
    self.barChart.data = weightArray;
    self.barChart.barSpacing = 10;
    self.barChart.barColors = @[[UIColor orangeColor], [UIColor yellowColor], [UIColor greenColor], [UIColor blueColor]];
    
    self.barChart2.data = bpArrayHigh;
    self.barChart2.barSpacing = 10;
    self.barChart2.barColors = @[[UIColor orangeColor], [UIColor yellowColor], [UIColor greenColor], [UIColor blueColor]];
    
    self.barChart4.data = bpArrayLow;
    self.barChart4.barSpacing = 10;
    self.barChart4.barColors = @[[UIColor orangeColor], [UIColor yellowColor], [UIColor greenColor], [UIColor blueColor]];
    
    
    
    self.barChart3.data = insulinArray;
    self.barChart3.barSpacing = 10;
    self.barChart3.barColors = @[[UIColor orangeColor], [UIColor yellowColor], [UIColor greenColor], [UIColor blueColor]];


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
