//
//  LoginViewController.m
//  PatientX
//
//  Created by Kelly Inciong on 11/15/14.
//  Copyright (c) 2014 Team4. All rights reserved.
//

#import "LoginViewController.h"
#import "DataClass.h"

@interface LoginViewController ()

@end

@implementation LoginViewController
@synthesize PatientLogin;
@synthesize UserField;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
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
- (IBAction)patientLogin:(id)sender {
    
    NSLog(@"Hi");
    NSLog(@"%@",self.UserField.text);
    
    DataClass *obj=[DataClass getInstance];
    obj.user = self.UserField.text;
    
}

@end
