//
//  DrMessagesViewController.h
//  PatientX
//
//  Created by Kelly Inciong on 11/16/14.
//  Copyright (c) 2014 Team4. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DrMessagesViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>
@property (copy, nonatomic) NSArray *drmessages;

@end
