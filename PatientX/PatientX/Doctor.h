//
//  Doctor.h
//  MedAppJamFinal
//
//  Created by Kevin Huynh on 11/14/14.
//  Copyright (c) 2014 Kevin Huynh. All rights reserved.
//
#ifndef MedAppJamFinal_Doctor_h
#define MedAppJamFinal_Doctor_h




extern @interface Doctor : NSObject {
    
}
@property(nonatomic,readwrite) NSString *firstName;
@property(nonatomic, readwrite) NSString *lastName; // Property
@property(nonatomic, readwrite) NSString *practice;
@property(nonatomic, readwrite) NSString *practiceAddress; // Property
@property(nonatomic,readwrite) NSString *phoneNumber;
@property(nonatomic,readwrite) NSString *email;

-(id)init;

@end

@implementation Doctor

@synthesize firstName;
@synthesize lastName;
@synthesize practice;
@synthesize practiceAddress;
@synthesize phoneNumber;
@synthesize email;


-(id)init
{
    self = [super init];
    return self;
}


@end
#endif

