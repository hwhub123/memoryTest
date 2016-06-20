//
//  ClassB.m
//  MemoryTest
//
//  Created by MF839-014 on 2016. 6. 20..
//  Copyright © 2016년 MF839-014. All rights reserved.
//

#import "ClassB.h"

@implementation ClassB
- (void) setClassA:(ClassA *)newClassA {
    if(classA) {
        [classA release];
    }
    classA = [newClassA retain];
}

- (void) dealloc {
    [classA release];
    [super dealloc];
}
@end
