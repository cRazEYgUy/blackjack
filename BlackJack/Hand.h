//
//  Hand.h
//  BlackJack
//
//  Created by Rose CW on 8/10/12.
//  Copyright (c) 2012 Rose CW. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Hand : NSObject
@property (strong) NSMutableArray *cardsInHand;

- (BOOL) bust;
-(int) getValueFromHand;
-(id) initWithCardOne:(Card*)c1 withCardTwo:(Card*)c2;
@end
