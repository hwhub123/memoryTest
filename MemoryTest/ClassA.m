//
//  ClassA.m
//  MemoryTest
//
//  Created by MF839-014 on 2016. 6. 20..
//  Copyright © 2016년 MF839-014. All rights reserved.
//

#import "ClassA.h"

@implementation ClassA
- (void)setClassB: (ClassB *)newClassB {
    if(classB) {
        [classB release];
    }
    classB = [newClassB retain];
}

- (void) dealloc {
    [classB release];
    [super dealloc];
}

@end
