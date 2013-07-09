//
//  NumberCard.m
//  iOSTutorial
//
//  Created by Jianneng on 7/9/13.
//  Copyright (c) 2013 Jianneng Li. All rights reserved.
//

#import "NumberCard.h"

@implementation NumberCard

- (NSString *)contents
{
	NSArray *rankStrings = [NumberCard rankStrings];
	return [rankStrings objectAtIndex:self.rank];
}

+ (NSArray *)rankStrings
{
    // Since iOS 6, can do
    // return @[@"?",@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10"];
    return [NSArray arrayWithObjects:@"?",@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",nil];
}

+ (NSUInteger)maxRank
{
	return [self rankStrings].count - 1;
}

- (void)setRank:(NSUInteger)rank
{
	if (rank <= [NumberCard maxRank])
	{
		_rank = rank;
	}
}

@end
