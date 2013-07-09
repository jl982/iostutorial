//
//  NumberCardDeck.m
//  iOSTutorial
//
//  Created by Jianneng on 7/9/13.
//  Copyright (c) 2013 Jianneng Li. All rights reserved.
//

#import "NumberCardDeck.h"
#import "NumberCard.h"

@implementation NumberCardDeck

// "id" means a pointer to an unknown class
// Use "id" here to avoid confusion, since it's inherited from NSObject
- (id)init
{
    // Allows superclass to initialize
    self = [super init];

    if (self)
    {
        for (NSUInteger rank = 1; rank <= [NumberCard maxRank]; rank++)
        {
            NumberCard *card = [[NumberCard alloc] init];
            card.rank = rank;
            [self addCard:card atTop:YES];
        }
    }

	return self;
}

@end
