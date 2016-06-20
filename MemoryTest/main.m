//
//  main.m
//  MemoryTest
//
//  Created by MF839-014 on 2016. 6. 20..
//  Copyright © 2016년 MF839-014. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ClassA.h"
#import "ClassB.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        ClassA *classA = [[ClassA alloc] init];     //A:1
        ClassB *classB = [[ClassB alloc] init];     //A:1 B:1
        
        [classA setClassB: classB];                 //A:1 B:2
        [classB release];                           //A:1 B:1
        
        [classB setClassA: classA];                 //A:2 B:1
        [classA release];                           //A:1 B:1
        
    }
    return 0;
}
