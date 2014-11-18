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

@synthesize weight1;
@synthesize weight2;
@synthesize weight3;
@synthesize weight4;
@synthesize weight5;
@synthesize weight6;
@synthesize weight7;
@synthesize weight8;
@synthesize weight9;
@synthesize weight10;

@synthesize insulin1;
@synthesize insulin2;
@synthesize insulin3;
@synthesize insulin4;
@synthesize insulin5;
@synthesize insulin6;
@synthesize insulin7;
@synthesize insulin8;
@synthesize insulin9;
@synthesize insulin10;

@synthesize bp1;
@synthesize bp2;
@synthesize bp3;
@synthesize bp4;
@synthesize bp5;
@synthesize bp6;
@synthesize bp7;
@synthesize bp8;
@synthesize bp9;
@synthesize bp10;

@synthesize bpLow1;
@synthesize bpLow2;
@synthesize bpLow3;
@synthesize bpLow4;
@synthesize bpLow5;
@synthesize bpLow6;
@synthesize bpLow7;
@synthesize bpLow8;
@synthesize bpLow9;
@synthesize bpLow10;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [Scroller setScrollEnabled:YES];
    [Scroller setContentSize:(CGSizeMake(320, 1100))];
    
    DataClass *obj=[DataClass getInstance];

     NSLog(@"The main Array: %@", obj.dataArray);

    
    NSMutableArray *weightArray = [NSMutableArray array];
    NSMutableArray *insulinArray = [NSMutableArray array];
    NSMutableArray *bpArrayHigh = [NSMutableArray array];
    NSMutableArray *bpArrayLow = [NSMutableArray array];
    
    for( int i = 9; i >= 0; i-- )
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
    self.barChart.barColors = @[[UIColor greenColor]];
    
    self.barChart2.data = bpArrayHigh;
    self.barChart2.barSpacing = 10;
    self.barChart2.barColors = @[[UIColor orangeColor]];
    
    self.barChart4.data = bpArrayLow;
    self.barChart4.barSpacing = 10;
    self.barChart4.barColors = @[[UIColor yellowColor]];
    
    
    
    self.barChart3.data = insulinArray;
    self.barChart3.barSpacing = 10;
    self.barChart3.barColors = @[[UIColor blueColor]];

    [weight1 setText: [NSString stringWithFormat:@"%@",weightArray[0]]];
    [weight2 setText: [NSString stringWithFormat:@"%@",weightArray[1]]];
    [weight3 setText: [NSString stringWithFormat:@"%@",weightArray[2]]];
    [weight4 setText: [NSString stringWithFormat:@"%@",weightArray[3]]];
    [weight5 setText: [NSString stringWithFormat:@"%@",weightArray[4]]];
    [weight6 setText: [NSString stringWithFormat:@"%@",weightArray[5]]];
    [weight7 setText: [NSString stringWithFormat:@"%@",weightArray[6]]];
    [weight8 setText: [NSString stringWithFormat:@"%@",weightArray[7]]];
    [weight9 setText: [NSString stringWithFormat:@"%@",weightArray[8]]];
    [weight10 setText: [NSString stringWithFormat:@"%@",weightArray[9]]];
    
    [insulin1 setText: [NSString stringWithFormat:@"%@",insulinArray[0]]];
    [insulin2 setText: [NSString stringWithFormat:@"%@",insulinArray[1]]];
    [insulin3 setText: [NSString stringWithFormat:@"%@",insulinArray[2]]];
    [insulin4 setText: [NSString stringWithFormat:@"%@",insulinArray[3]]];
    [insulin5 setText: [NSString stringWithFormat:@"%@",insulinArray[4]]];
    [insulin6 setText: [NSString stringWithFormat:@"%@",insulinArray[5]]];
    [insulin7 setText: [NSString stringWithFormat:@"%@",insulinArray[6]]];
    [insulin8 setText: [NSString stringWithFormat:@"%@",insulinArray[7]]];
    [insulin9 setText: [NSString stringWithFormat:@"%@",insulinArray[8]]];
    [insulin10 setText: [NSString stringWithFormat:@"%@",insulinArray[9]]];

    [bp1 setText: [NSString stringWithFormat:@"%@",bpArrayHigh[0]]];
    [bp2 setText: [NSString stringWithFormat:@"%@",bpArrayHigh[1]]];
    [bp3 setText: [NSString stringWithFormat:@"%@",bpArrayHigh[2]]];
    [bp4 setText: [NSString stringWithFormat:@"%@",bpArrayHigh[3]]];
    [bp5 setText: [NSString stringWithFormat:@"%@",bpArrayHigh[4]]];
    [bp6 setText: [NSString stringWithFormat:@"%@",bpArrayHigh[5]]];
    [bp7 setText: [NSString stringWithFormat:@"%@",bpArrayHigh[6]]];
    [bp8 setText: [NSString stringWithFormat:@"%@",bpArrayHigh[7]]];
    [bp9 setText: [NSString stringWithFormat:@"%@",bpArrayHigh[8]]];
    [bp10 setText: [NSString stringWithFormat:@"%@",bpArrayHigh[9]]];
    
    [bpLow1 setText: [NSString stringWithFormat:@"%@",bpArrayLow[0]]];
    [bpLow2 setText: [NSString stringWithFormat:@"%@",bpArrayLow[1]]];
    [bpLow3 setText: [NSString stringWithFormat:@"%@",bpArrayLow[2]]];
    [bpLow4 setText: [NSString stringWithFormat:@"%@",bpArrayLow[3]]];
    [bpLow5 setText: [NSString stringWithFormat:@"%@",bpArrayLow[4]]];
    [bpLow6 setText: [NSString stringWithFormat:@"%@",bpArrayLow[5]]];
    [bpLow7 setText: [NSString stringWithFormat:@"%@",bpArrayLow[6]]];
    [bpLow8 setText: [NSString stringWithFormat:@"%@",bpArrayLow[7]]];
    [bpLow9 setText: [NSString stringWithFormat:@"%@",bpArrayLow[8]]];
    [bpLow10 setText: [NSString stringWithFormat:@"%@",bpArrayLow[9]]];


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
