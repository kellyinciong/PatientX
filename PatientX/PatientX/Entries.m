//
//  Entries.m
//  MedAppJamFinal
//
//  Created by Kevin Huynh on 11/14/14.
//  Copyright (c) 2014 Kevin Huynh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Entries.h"


@implementation Entries{
    
    NSString *date;
    NSString *weight;
    NSString *bloodPressure;
    NSString *insulin;
}

@synthesize date;
@synthesize weight;
@synthesize bloodPressure;
@synthesize insulin;

-(id)init
{
    self = [super init];
    return self;
}


@end
