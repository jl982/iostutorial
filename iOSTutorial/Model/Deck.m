//
//  Deck.m
//  iOSTutorial
//
//  Created by Jianneng on 7/9/13.
//  Copyright (c) 2013 Jianneng Li. All rights reserved.
//

#import "Deck.h"

@interface Deck()

// Needs to be strong, because nothing else points to it (since it's private)
@property (strong, nonatomic) NSMutableArray *cards; // of Card

@end


@implementation Deck

// Implements getter rather than using default
- (NSMutableArray *)cards
{
	// Lazy instantiation
	if (!_cards) _cards = [[NSMutableArray alloc] init];
	return _cards;
}

- (void)addCard:(Card *)card atTop:(BOOL)atTop
{
	// Can't insert nil
	if (card)
	{
		if (atTop)
		{
			[self.cards insertObject:card atIndex:0];
		}
		else
		{
			[self.cards addObject:card];
		}
	}
}

- (Card *)drawRandomCard
{
	Card *randomCard = nil;
    
	if (self.cards.count)
	{
		unsigned index = arc4random() % self.cards.count;
		// Prior to iOS 6, have to send a message, i.e.
		// randomCard = [self.cards objectAtIndex:index]
		randomCard = self.cards[index];
		[self.cards removeObjectAtIndex:index];
	}
    
	return randomCard;
}

@end
