//
//  DrMessagesViewController.m
//  PatientX
//
//  Created by Kelly Inciong on 11/16/14.
//  Copyright (c) 2014 Team4. All rights reserved.
//

#import "DrMessagesViewController.h"
#import "DataClass.h"
@interface DrMessagesViewController ()

@end

@implementation DrMessagesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSMutableArray *displayMessageArray = [NSMutableArray array];
    DataClass *obj=[DataClass getInstance];
    
    for(int i = 0;i<obj.messageArray.count;i++){
        [displayMessageArray addObject:  [NSString stringWithFormat: @"Message %d",i+1]];
        
    }
    // Do any additional setup after loading the view, typically from a nib.
    self.drmessages = displayMessageArray;
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

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath


{
    DataClass *obj=[DataClass getInstance];
    NSLog(@"%ld",indexPath.row);
    UIAlertView *messageAlert = [[UIAlertView alloc]
                                 initWithTitle:[NSString stringWithFormat: @"Message %ld",indexPath.row+1] message: obj.messageArray[indexPath.row]delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    
    // Display Alert Message
    [messageAlert show];
    
}

@end
