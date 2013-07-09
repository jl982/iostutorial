//
//  Card.h
//  iOSTutorial
//
//  Created by Jianneng on 7/8/13.
//  Copyright (c) 2013 Jianneng Li. All rights reserved.
//

// Importing precompiled header of standard library
#import <Foundation/Foundation.h>

@interface Card : NSObject

// Represents a getter and a setter
// "strong" means this object will stay in the heap as long as something points to it
// "weak" means this object will stay in the heap as long as something else points strongly to it
// "nonatomic" means operations on this object is not thread-safe
@property (strong, nonatomic) NSString *contents;

@end
