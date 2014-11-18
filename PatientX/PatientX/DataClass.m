//
//  DataClass.m
//  PatientX
//
//  Created by Kevin Huynh on 11/16/14.
//  Copyright (c) 2014 Team4. All rights reserved.
//

#import "DataClass.h"

@implementation DataClass

@synthesize str;
@synthesize dataArray;
@synthesize messageArray;
@synthesize patientArray;
@synthesize patientDataArray;

static DataClass *instance = nil;

+(DataClass *)getInstance
{
    @synchronized(self)
    {
        if(instance==nil)
        {
            instance= [DataClass new];
        }
    }
    return instance;
}
@end
