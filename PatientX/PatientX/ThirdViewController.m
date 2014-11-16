//
//  ThirdViewController.m
//  PatientX
//
//  Created by Kelly Inciong on 11/14/14.
//  Copyright (c) 2014 Team4. All rights reserved.
//

#import "ThirdViewController.h"
#import "Doctor.h"
#import "Patient.h"
#import "Entries.h"
@interface ThirdViewController ()

@end

@implementation ThirdViewController
@synthesize saveButton;
@synthesize weightField;
@synthesize bpField;
@synthesize insulinField;
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

- (IBAction)showMessage
{
    
    Patient *patient1 = [[Patient alloc]init];
    patient1.firstName = @"Kevin";
    patient1.lastName = @"Huynh";
    
    NSDate *currDate = [NSDate date];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc]init];
    [dateFormatter setDateFormat:@"MM/dd/YY hh:mm:ss"];
    NSString *dateString = [dateFormatter stringFromDate:currDate];
    NSLog(@"%@",dateString);
    

    
    Entries *newEntry = [[Entries alloc]init];
    newEntry.date = dateString;
    newEntry.weight = self.weightField.text;
    newEntry.bloodPressure = self.bpField.text;
    newEntry.insulin = self.insulinField.text;
    
    
    
    
    
    UIAlertView *helloWorldAlert = [[UIAlertView alloc]
                                    initWithTitle:@"Display"
                                    message: [NSString stringWithFormat:@"%@ %@\nEntry Time: %@ \n %@ lbs\n %@ \n %@", patient1.firstName,patient1.lastName, newEntry.date, newEntry.weight,newEntry.bloodPressure, newEntry.insulin]
                                    delegate:nil cancelButtonTitle:@"OK"
                                    otherButtonTitles:nil];
    
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
            NSLog(@"%@",stringFromFileAtURL);
            NSFileHandle *fileHandle = [NSFileHandle fileHandleForWritingAtPath:@"/Users/Kevin/Desktop/myfile.txt"];
            // [fileHandle seekToEndOfFile];
            [fileHandle writeData:[[NSString stringWithFormat:@"%@,%@,%@,%@\n%@", newEntry.date, newEntry.weight,newEntry.bloodPressure, newEntry.insulin,stringFromFileAtURL] dataUsingEncoding:NSUTF8StringEncoding]];
            [fileHandle closeFile];
                [helloWorldAlert show];
        }

        
    }
    else
        NSLog (@"File not found");
    /*
    NSString *str = [NSString stringWithFormat:@"%@,%@,%@,%@", newEntry.date, newEntry.weight,newEntry.bloodPressure, newEntry.insulin];
    [str writeToFile:@"/Users/Kevin/Documents/MedAppJam/MedAppJamFinal/textFiles/myfile.txt" atomically:YES encoding:NSUTF8StringEncoding error:nil];
    */
    

    
    // Display the Hello World Message

    
    
    
}

@end
