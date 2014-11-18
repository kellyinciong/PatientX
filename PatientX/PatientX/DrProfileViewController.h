//
//  DrProfileViewController.h
//  PatientX
//
//  Created by Kelly Inciong on 11/16/14.
//  Copyright (c) 2014 Team4. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DrProfileViewController : UIViewController{
    IBOutlet UIScrollView *Scroller;
}
@property (weak, nonatomic) IBOutlet UILabel *name;
@property (weak, nonatomic) IBOutlet UILabel *location;
@property (weak, nonatomic) IBOutlet UILabel *practice;
@property (weak, nonatomic) IBOutlet UILabel *practiceAddress;
@property (weak, nonatomic) IBOutlet UILabel *phone;
@property (weak, nonatomic) IBOutlet UILabel *email;
@property (weak, nonatomic) IBOutlet UIImageView *profilePicture;

@end
