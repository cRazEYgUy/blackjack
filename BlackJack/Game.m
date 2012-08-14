//
//  Game.m
//  BlackJack
//
//  Created by Rose CW on 8/13/12.
//  Copyright (c) 2012 Rose CW. All rights reserved.
//

#import "Game.h"
#import "Deck.h"
#import "Hand.h"
#import "Card.h"

@implementation Game
{
    Deck* newDeck;
}

@synthesize playerHand;
@synthesize dealerHand;
@synthesize outcome;

-(id)init{
    self = [super init];
    if (self){
        //Generate Deck (shuffle deck)
        newDeck = [Deck new];
        [newDeck generateTheDeck];
        
        //Draw two cards
        Card *c1 = [Card new];
        c1 = [newDeck drawCard];
        Card *c2 = [Card new];
        c2 = [newDeck drawCard];
        Card *c3 = [Card new];
        c3 = [newDeck drawCard];
        Card *c4 = [Card new];
        c4 = [newDeck drawCard];
        
        //Initialize player hand
        playerHand = [[Hand alloc] initWithCardOne: c1 withCardTwo: c2];
        dealerHand = [[Hand alloc] initWithCardOne: c3 withCardTwo: c4];
    }
    return self;
}



-(void)hit{
    Card* card = [newDeck drawCard];
    [playerHand.cardsInHand addObject: card];
}

-(void)stand{
    [self dealerTurn];
}

-(void)dealerTurn{
    while ([dealerHand getValueFromHand] < 16) {
        Card *card = [newDeck drawCard];
        [dealerHand.cardsInHand addObject: card];
    }
    [self endOfGame];
}



- (void) endOfGame {

    if ([playerHand bust] || ([dealerHand getValueFromHand] > [playerHand getValueFromHand])) {
        self.outcome = @"Dealer wins!";
    } else if ([dealerHand bust] || ([playerHand getValueFromHand] > [dealerHand getValueFromHand]) ) {
        self.outcome = @"Player wins!";
    } else {
        self.outcome = @"It's a tie!";
    }
    NSLog(@"%@", self.outcome);
    //Trigger UI Alert to show outcome
}















//Round method
//from dealer to all players back to dealer

//Player turn method
//initial value = value of playerHand

@end