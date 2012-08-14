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
@interface Hand()
-(int)countAces;
@end


@implementation Hand
@synthesize cardsInHand = _cardsInHand;


-(id)initWithCardOne:(Card*)c1 withCardTwo: (Card*) c2 {
    self= [super init];
    if (self){
        self.cardsInHand = [NSMutableArray arrayWithObjects: c1, c2, nil];
    }
    return self;
}



-(int) getValueFromHand {
    int sumOfHand = 0;
    for (Card* currentCard in self.cardsInHand) {
        sumOfHand += currentCard.pointsValue;
    }
    
    if (sumOfHand > 21) {
        sumOfHand = sumOfHand -(10 * self.countAces);
        if (sumOfHand <=10) { sumOfHand += 10;}
    }
        return sumOfHand;
}


-(int)countAces {
    int count = 0;
    for (Card* currentCard in self.cardsInHand) {
        if (currentCard.pointsValue == 11){
            count ++;
        }
    }
    return count;
}

- (BOOL) bust {
    if ([self getValueFromHand] > 21) {
        return YES;
    } else{
        return NO;
    }
}


@end
