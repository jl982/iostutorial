//
//  NumberCard.h
//  iOSTutorial
//
//  Created by Jianneng on 7/9/13.
//  Copyright (c) 2013 Jianneng Li. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface NumberCard : Card

@property (nonatomic,) NSUInteger rank;

// "+" means class method
+ (NSUInteger)maxRank;

@end
