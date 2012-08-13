//
//  Deck.m
//  BlackJack
//
//  Created by Rose CW on 8/10/12.
//  Copyright (c) 2012 Rose CW. All rights reserved.
//

#import "Deck.h"
#import "Card.h"

@implementation Deck
@synthesize cardsInDeck;



-(NSMutableArray*) generateTheDeck {
    cardsInDeck = [NSMutableArray new];
    for (NSString* suit in[Card suits]) {
        for (NSNumber *value in [Card values] ) {
            Card* newCard = [Card new];
            newCard.suit =  suit;
            newCard.value = [value intValue];
            [[self cardsInDeck] addObject:newCard];
        }
    }
    cardsInDeck = [self shuffleDeck];
    return cardsInDeck;
}

-(NSMutableArray*) shuffleDeck{
    for (int i = 0; i<52; i++) {
        [cardsInDeck exchangeObjectAtIndex:i withObjectAtIndex: arc4random()%52];
    }
    return cardsInDeck;
}



@end
