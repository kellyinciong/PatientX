//
//  DrPatientsViewController.m
//  PatientX
//
//  Created by Kelly Inciong on 11/16/14.
//  Copyright (c) 2014 Team4. All rights reserved.
//

#import "DrPatientsViewController.h"
#import "DataClass.h"

@interface DrPatientsViewController ()

@end

@implementation DrPatientsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    

    DataClass *obj=[DataClass getInstance];

    // Do any additional setup after loading the view, typically from a nib.
    self.patients = obj.patientArray;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.patients count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *SimpleIdentifier = @"SimpleIdentifier";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:SimpleIdentifier];
    
    if (cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:SimpleIdentifier];
    }
    
    cell.textLabel.text = self.patients[indexPath.row];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath


{
    
    
    DataClass *obj=[DataClass getInstance];
    NSURL *URL = [NSURL fileURLWithPath:obj.patientDataArray[indexPath.row]];
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
        NSArray *initialSplitArray =[stringFromFileAtURL componentsSeparatedByString:@"\n"];
        
        NSArray *profileArray =[initialSplitArray[0] componentsSeparatedByString:@","];
        UIAlertView *messageAlert = [[UIAlertView alloc]
                                     initWithTitle:obj.patientArray[indexPath.row]message: [NSString stringWithFormat:@"\nDate: %@\nWeight: %@\nSystolic Blood Pressure: %@\n Diastolic Blood Pressure: %@", profileArray[0],profileArray[1],profileArray[2],profileArray[3]]delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        
        // Display Alert Message
        [messageAlert show];

        
        
    }
    
    NSLog(@"%ld",indexPath.row);
    
}


@end
