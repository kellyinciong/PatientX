//
//  Patient.h
//  MedAppJamFinal
//
//  Created by Kevin Huynh on 11/13/14.
//  Copyright (c) 2014 Kevin Huynh. All rights reserved.
//

#ifndef PatientX_Patient_h
#define PatientX_Patient_h

#import <Foundation/Foundation.h>

extern @interface Patient : NSObject {
    
}
@property(nonatomic, readwrite) NSString *firstName; // Property
@property(nonatomic, readwrite) NSString *lastName;


-(id)init;

@end

#endif
