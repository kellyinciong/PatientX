//
//  DrMessagesViewController.m
//  PatientX
//
//  Created by Kelly Inciong on 11/16/14.
//  Copyright (c) 2014 Team4. All rights reserved.
//

#import "DrMessagesViewController.h"

@interface DrMessagesViewController ()

@end

@implementation DrMessagesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.drmessages = @[@"Message from Patient 1", @"Message from Patient 2", @"Message from Patient 3", @"Message from Patient 4", @"Message from Patient 5"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.drmessages count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *SimpleIdentifier = @"SimpleIdentifier";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:SimpleIdentifier];
    
    if (cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:SimpleIdentifier];
    }
    
    cell.textLabel.text = self.drmessages[indexPath.row];
    
    return cell;
}

@end
