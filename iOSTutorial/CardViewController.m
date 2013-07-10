//
//  ViewController.m
//  iOSTutorial
//
//  Created by Jianneng on 7/8/13.
//  Copyright (c) 2013 Jianneng Li. All rights reserved.
//

#import "CardViewController.h"
#import "NumberCardDeck.h"

@interface CardViewController ()
@property (nonatomic) int flipCount;
@property (strong, nonatomic) NumberCardDeck *deck;

@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@end


@implementation CardViewController

- (NumberCardDeck *)deck
{
    if (!_deck)
    {
        _deck = [[NumberCardDeck alloc] init];
    }
    return _deck;
}

- (IBAction)flipCard:(UIButton *)sender {
    sender.selected = !sender.isSelected;
    if (sender.isSelected)
    {
        Card *cardDrawn = [[self deck] drawRandomCard];
        NSString *selectedText = cardDrawn ? cardDrawn.contents : @"Empty";
        [sender setTitle:selectedText forState:UIControlStateSelected];
    }
    self.flipCount++;
}

- (void)setFlipCount:(int)flipCount
{
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %d", self.flipCount];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidUnload {
    [self setFlipsLabel:nil];
    [super viewDidUnload];
}
@end
