//
//  ClassB.h
//  MemoryTest
//
//  Created by MF839-014 on 2016. 6. 20..
//  Copyright © 2016년 MF839-014. All rights reserved.
//

#import <Foundation/Foundation.h>
@class ClassA;
@interface ClassB : NSObject
{
    ClassA *classA;
}
- (void) setClassA:(ClassA *)newClassA;
@end
