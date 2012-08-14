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



-(void) generateTheDeck {
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
}

-(NSMutableArray*) shuffleDeck{
    for (int i = 0; i<52; i++) {
        [cardsInDeck exchangeObjectAtIndex:i withObjectAtIndex: i + arc4random()%(52 -i)];
    }
    return cardsInDeck;
}


-(Card*)drawCard{
    
    Card *card = self.cardsInDeck.lastObject;
    [self.cardsInDeck removeLastObject];
    return card;
}



@end
