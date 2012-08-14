//
//  Deck.h
//  BlackJack
//
//  Created by Rose CW on 8/10/12.
//  Copyright (c) 2012 Rose CW. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject
@property (strong) NSMutableArray *cardsInDeck;

-(void) generateTheDeck;
-(NSMutableArray*) shuffleDeck;
-(Card*) drawCard;
@end