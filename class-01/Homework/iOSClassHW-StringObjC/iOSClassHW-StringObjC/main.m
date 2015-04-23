//
//  main.m
//  iOSClassHW-StringObjC
//
//  Created by Cory D. Wiles on 4/15/15.
//  Copyright (c) 2015 Cory Wiles. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        // modifying a string

        NSLog(@"Modifying a string");
        
        NSString *firstName = @"Cory";
        NSString *lastName  = @"Wiles";
        NSString *fullname  = [NSString stringWithFormat:@"%@ %@", firstName, lastName];
        
        NSLog(@"first name %@ last name %@ fullname %@", firstName, lastName, fullname);
        
        NSString *name = @"Cory";
        
        NSLog(@"name %@", name);
        
        name = @"Erin Wiles";
        
        NSLog(@"name %@", name);
        
        // creating and iterating over a dictionary
        
        NSLog(@"creating and iterating over a dictionary");
        
        NSDictionary *person = @{@"firstName" : @"Cory", @"lastName" : @"Wiles", @"dob" : @"02/03/1979"};
        
        [person enumerateKeysAndObjectsUsingBlock:^(id key, id value, BOOL *stop){
            NSLog(@"key %@ value %@", key, value);
        }];
    }
    return 0;
}
