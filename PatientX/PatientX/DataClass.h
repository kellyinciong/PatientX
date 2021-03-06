//
//  DataClass.h
//  PatientX
//
//  Created by Kevin Huynh on 11/16/14.
//  Copyright (c) 2014 Team4. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataClass : NSObject{

    NSString *str;
    NSMutableArray *dataArray;
    NSString *user;
    NSString *pathToData;
    NSArray *messageArray;
}

@property(nonatomic,retain)NSString *str;
@property(nonatomic,retain)NSMutableArray *dataArray;
@property(nonatomic,retain)NSString *user;
@property(nonatomic,retain)NSString *pathToData;
@property(nonatomic,retain)NSArray *messageArray;
@property(nonatomic,retain)NSArray *patientArray;
@property(nonatomic,retain)NSArray *patientDataArray;


+(DataClass*)getInstance;
@end