//
//  FirstViewController.m
//  PatientX
//
//  Created by Kelly Inciong on 11/14/14.
//  Copyright (c) 2014 Team4. All rights reserved.
//

#import "FirstViewController.h"
#import "Entries.h"
#import "Patient.h"
#import "DataClass.h"


@interface FirstViewController ()

@end

@implementation FirstViewController

//@synthesize textView1;
@synthesize weight1;
@synthesize bp1;
@synthesize date1;
@synthesize insulin1;

@synthesize weight2;
@synthesize bp2;
@synthesize date2;
@synthesize insulin2;

@synthesize weight3;
@synthesize bp3;
@synthesize date3;
@synthesize insulin3;

@synthesize weight4;
@synthesize bp4;
@synthesize date4;
@synthesize insulin4;

@synthesize weight5;
@synthesize bp5;
@synthesize date5;
@synthesize insulin5;

@synthesize weight6;
@synthesize bp6;
@synthesize date6;
@synthesize insulin6;

@synthesize weight7;
@synthesize bp7;
@synthesize date7;
@synthesize insulin7;

@synthesize weight8;
@synthesize bp8;
@synthesize date8;
@synthesize insulin8;

@synthesize weight9;
@synthesize bp9;
@synthesize date9;
@synthesize insulin9;

@synthesize weight10;
@synthesize bp10;
@synthesize date10;
@synthesize insulin10;

- (IBAction)viewDidLoad {
    
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    [Scroller setScrollEnabled:YES];
    [Scroller setContentSize:(CGSizeMake(400, 2000))];
    
    NSFileManager *filemgr;
    filemgr = [NSFileManager defaultManager];
    
    if ([filemgr fileExistsAtPath: @"/Users/Kevin/Desktop/myfile.txt" ] == YES){
        NSLog (@"File exists");
        
        
        
        NSURL *URL = [NSURL fileURLWithPath:@"/Users/Kevin/Desktop/myfile.txt"];
        NSError *error;
        NSString *stringFromFileAtURL = [[NSString alloc]
                                         initWithContentsOfURL:URL
                                         encoding:NSUTF8StringEncoding
                                         error:&error];
        if (stringFromFileAtURL == nil) {
            // an error occurred
            NSLog(@"Error reading file at %@\n%@",
                  URL, [error localizedFailureReason]);
            // implementation continues ...
        }
        else{
            NSMutableArray *dataArray= [[NSMutableArray alloc] initWithCapacity:10];
            NSLog(@"%@",stringFromFileAtURL);
            
            NSArray *mainArray =[stringFromFileAtURL componentsSeparatedByString:@"\n"];
            
            NSLog(@"This is the Array: %@",mainArray[1]);

            for(int i = 0;i < 10;i = i + 1)
            {
                
                 NSArray *tempArray =[mainArray[i] componentsSeparatedByString:@","];
                 [dataArray addObject: tempArray];
            }
            
            NSLog(@"This is a test: %@", dataArray[1][0]);
            
            
            NSArray *array = [stringFromFileAtURL componentsSeparatedByString:@","];
            
            
             Entries *newEntry = [[Entries alloc]init];
             newEntry.date = array[0];
             newEntry.weight = array[1];
             newEntry.bloodPressure = array[2];
             newEntry.insulin = array[3];
             
            [weight1 setText:newEntry.weight];
            [date1 setText:newEntry.date];
            [bp1 setText:newEntry.bloodPressure];
            [insulin1 setText:newEntry.insulin];
            
            
            [date2 setText:dataArray[1][0]];
            [weight2 setText:dataArray[1][1]];
            [bp2 setText:dataArray[1][2]];
            [insulin2 setText:dataArray[1][3]];
            
            
            [date3 setText:dataArray[2][0]];
            [weight3 setText:dataArray[2][1]];
            [bp3 setText:dataArray[2][2]];
            [insulin3 setText:dataArray[2][3]];
            
            [date4 setText:dataArray[3][0]];
            [weight4 setText:dataArray[3][1]];
            [bp4 setText:dataArray[3][2]];
            [insulin4 setText:dataArray[3][3]];

            [date5 setText:dataArray[4][0]];
            [weight5 setText:dataArray[4][1]];
            [bp5 setText:dataArray[4][2]];
            [insulin5 setText:dataArray[4][3]];

            [date6 setText:dataArray[5][0]];
            [weight6 setText:dataArray[5][1]];
            [bp6 setText:dataArray[5][2]];
            [insulin6 setText:dataArray[5][3]];
            
            [date7 setText:dataArray[6][0]];
            [weight7 setText:dataArray[6][1]];
            [bp7 setText:dataArray[6][2]];
            [insulin7 setText:dataArray[6][3]];
            
            [date8 setText:dataArray[7][0]];
            [weight8 setText:dataArray[7][1]];
            [bp8 setText:dataArray[7][2]];
            [insulin8 setText:dataArray[7][3]];
            
            [date9 setText:dataArray[8][0]];
            [weight9 setText:dataArray[8][1]];
            [bp9 setText:dataArray[8][2]];
            [insulin9 setText:dataArray[8][3]];
            
            [date10 setText:dataArray[9][0]];
            [weight10 setText:dataArray[9][1]];
            [bp10 setText:dataArray[9][2]];
            [insulin10 setText:dataArray[9][3]];
            
            DataClass *obj=[DataClass getInstance];
            obj.str= @"I am Global variable";
            obj.dataArray = dataArray;
        }
    }
    else
        NSLog (@"File not found");
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
