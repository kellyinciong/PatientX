//
//  ThirdViewController.h
//  PatientX
//
//  Created by Kelly Inciong on 11/14/14.
//  Copyright (c) 2014 Team4. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ThirdViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIBarButtonItem *saveButton;
@property(strong,nonatomic) IBOutlet UITextField *weightField;
@property(strong,nonatomic) IBOutlet UITextField *bpField;
@property(strong,nonatomic) IBOutlet UITextField *insulinField;

@end
