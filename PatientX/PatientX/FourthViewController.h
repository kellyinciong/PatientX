//
//  FourthViewController.h
//  PatientX
//
//  Created by New User on 11/14/14.
//  Copyright (c) 2014 Team4. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TEAChart.h"


@interface FourthViewController : UIViewController <TEAContributionGraphDataSource>{
    IBOutlet UIScrollView *Scroller;
    
    
}
@property (weak, nonatomic) IBOutlet UITextView *weight1;
@property (weak, nonatomic) IBOutlet UITextView *bpLow1;
@property (weak, nonatomic) IBOutlet UITextView *bp1;
@property (weak, nonatomic) IBOutlet UITextView *insulin1;

@property (weak, nonatomic) IBOutlet UITextView *weight2;
@property (weak, nonatomic) IBOutlet UITextView *bpLow2;
@property (weak, nonatomic) IBOutlet UITextView *bp2;
@property (weak, nonatomic) IBOutlet UITextView *insulin2;

@property (weak, nonatomic) IBOutlet UITextView *weight3;
@property (weak, nonatomic) IBOutlet UITextView *bpLow3;
@property (weak, nonatomic) IBOutlet UITextView *bp3;
@property (weak, nonatomic) IBOutlet UITextView *insulin3;

@property (weak, nonatomic) IBOutlet UITextView *weight4;
@property (weak, nonatomic) IBOutlet UITextView *bpLow4;
@property (weak, nonatomic) IBOutlet UITextView *bp4;
@property (weak, nonatomic) IBOutlet UITextView *insulin4;

@property (weak, nonatomic) IBOutlet UITextView *weight5;
@property (weak, nonatomic) IBOutlet UITextView *bpLow5;
@property (weak, nonatomic) IBOutlet UITextView *bp5;
@property (weak, nonatomic) IBOutlet UITextView *insulin5;

@property (weak, nonatomic) IBOutlet UITextView *weight6;
@property (weak, nonatomic) IBOutlet UITextView *bpLow6;
@property (weak, nonatomic) IBOutlet UITextView *bp6;
@property (weak, nonatomic) IBOutlet UITextView *insulin6;

@property (weak, nonatomic) IBOutlet UITextView *weight7;
@property (weak, nonatomic) IBOutlet UITextView *bpLow7;
@property (weak, nonatomic) IBOutlet UITextView *bp7;
@property (weak, nonatomic) IBOutlet UITextView *insulin7;

@property (weak, nonatomic) IBOutlet UITextView *weight8;
@property (weak, nonatomic) IBOutlet UITextView *bpLow8;
@property (weak, nonatomic) IBOutlet UITextView *bp8;
@property (weak, nonatomic) IBOutlet UITextView *insulin8;

@property (weak, nonatomic) IBOutlet UITextView *weight9;
@property (weak, nonatomic) IBOutlet UITextView *bpLow9;
@property (weak, nonatomic) IBOutlet UITextView *bp9;
@property (weak, nonatomic) IBOutlet UITextView *insulin9;

@property (weak, nonatomic) IBOutlet UITextView *weight10;
@property (weak, nonatomic) IBOutlet UITextView *bpLow10;
@property (weak, nonatomic) IBOutlet UITextView *bp10;
@property (weak, nonatomic) IBOutlet UITextView *insulin10;



@end
