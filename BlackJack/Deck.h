//
//  Deck.h
//  BlackJack
//
//  Created by Rose CW on 8/10/12.
//  Copyright (c) 2012 Rose CW. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Deck : NSObject
@property NSMutableArray *cardsInDeck;

-(NSMutableArray*) generateTheDeck;
-(NSMutableArray*) shuffleDeck;
@end