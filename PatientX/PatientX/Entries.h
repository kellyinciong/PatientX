//
//  Entries.h
//  MedAppJamFinal
//
//  Created by Kevin Huynh on 11/12/14.
//  Copyright (c) 2014 Kevin Huynh. All rights reserved.
//

#ifndef MedAppJamFinal_Entries_h
#define MedAppJamFinal_Entries_h

#import <Foundation/Foundation.h>

extern @interface Entries : NSObject {
    
}
@property(nonatomic,readwrite) NSString *date;
@property(nonatomic, readwrite) NSString *weight; // Property
@property(nonatomic, readwrite) NSString *bloodPressure;
@property(nonatomic, readwrite) NSString *insulin; // Property

-(id)init;

@end

#endif
