//
//  Card.h
//  BlackJack
//
//  Created by Rose CW on 8/10/12.
//  Copyright (c) 2012 Rose CW. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject
@property (strong) NSString *suit;
@property int value;
@property int pointsValue;

+(NSArray*)suits;
+(NSArray*)values;
@end
