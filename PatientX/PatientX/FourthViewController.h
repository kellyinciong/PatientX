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

@end
