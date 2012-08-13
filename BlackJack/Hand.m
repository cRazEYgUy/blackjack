//
//  Hand.m
//  BlackJack
//
//  Created by Rose CW on 8/10/12.
//  Copyright (c) 2012 Rose CW. All rights reserved.
//

#import "Hand.h"
#import "Card.h"
#import "Deck.h"

@implementation Hand
@synthesize cardsInHand = _cardsInHand;

//add cards to cardsInHand
-(NSMutableArray*)addCardsToHandFromDeck:(Deck*)deck{
    
    NSMutableArray* cardsInHand = [NSMutableArray addObject: [[deck cardsInDeck]lastObject]];
    
    
    
    
}

-(NSString*) description {

}

-(int) getValueOfHand {

}

@end
