//
//  Game.h
//  BlackJack
//
//  Created by Rose CW on 8/13/12.
//  Copyright (c) 2012 Rose CW. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Hand.h"

@interface Game : NSObject

@property (strong) Hand *playerHand;
@property (strong) Hand *dealerHand;
@property (strong) NSString *outcome;

-(void)hit;
-(void)stand;
-(void)dealerTurn;
@end
