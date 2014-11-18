//
//  DrProfileViewController.m
//  PatientX
//
//  Created by Kelly Inciong on 11/16/14.
//  Copyright (c) 2014 Team4. All rights reserved.
//

#import "DrProfileViewController.h"
#import "DataClass.h"

@interface DrProfileViewController ()

@end

@implementation DrProfileViewController
@synthesize name;
@synthesize location;
@synthesize practice;
@synthesize practiceAddress;
@synthesize phone;
@synthesize email;
@synthesize profilePicture;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [Scroller setScrollEnabled:YES];
    [Scroller setContentSize:(CGSizeMake(400, 600))];
    
    NSFileManager *filemgr;
    filemgr = [NSFileManager defaultManager];
    
    DataClass *obj1=[DataClass getInstance];
    
    /////////////////////////////////////////
    // UPDATE THIS WITH YOUR PATH.
    //
    NSString* fileNameExt = [NSString stringWithFormat:@"/Users/Kevin/Desktop/PatientXText/%@.txt", obj1.user];
    //
    //
    /////////////////////////////////////////
    
    
    //THIS IS THE PROFILE STUFF.
    
    NSFileManager *filemgr1;
    filemgr1 = [NSFileManager defaultManager];
    
    if ([filemgr1 fileExistsAtPath: fileNameExt ] == YES){
        NSLog (@"File exists");
        
        NSURL *URL = [NSURL fileURLWithPath:fileNameExt];
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
            
            
            
            NSArray *profileArray =[stringFromFileAtURL componentsSeparatedByString:@"|"];
            
            [name setText: profileArray[0]];
            [location setText: profileArray[1]];
            [practice setText: profileArray[2]];
            [practiceAddress setText: profileArray[3]];
            [phone setText: profileArray[4]];
            [email setText: profileArray[5]];
            
            DataClass *obj=[DataClass getInstance];

            obj.patientArray= [profileArray[7] componentsSeparatedByString:@"~"];
            obj.patientDataArray = [profileArray[8] componentsSeparatedByString:@"~"];
            
            NSBundle *imageBundle = [NSBundle mainBundle];// [NSBundle mainBundle] if your image is inside main bundle
            NSString *imagePath = [imageBundle pathForResource:profileArray[6] ofType:@"png"];
            UIImage *image = [UIImage imageWithContentsOfFile:imagePath];
            [profilePicture setImage:image];

        }
    }
    else{
        NSLog (@"File not found");
    }
    //END PROFILE STUFF
    

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
