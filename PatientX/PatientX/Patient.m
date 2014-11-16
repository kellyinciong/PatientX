
//
//  Patient.m
//  MedAppJamFinal
//
//  Created by Kevin Huynh on 11/15/14.
//  Copyright (c) 2014 Kevin Huynh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"

@implementation Patient{
    
    
    NSString *firstName; // Property
    NSString *lastName;
}

@synthesize firstName;
@synthesize lastName;

-(id)init
{
    self = [super init];
    return self;
}


@end