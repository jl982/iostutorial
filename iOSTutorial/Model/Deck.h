//
//  Deck.h
//  iOSTutorial
//
//  Created by Jianneng on 7/9/13.
//  Copyright (c) 2013 Jianneng Li. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

// "-" means instance method ("+" would mean class method)
// This method takes two arguments: card and atTop
- (void)addCard:(Card *)card atTop:(BOOL)atTop;

// This method takes no arguments
- (Card *)drawRandomCard;

@end
