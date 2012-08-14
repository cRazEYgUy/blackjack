//
//  Card.m
//  BlackJack
//
//  Created by Rose CW on 8/10/12.
//  Copyright (c) 2012 Rose CW. All rights reserved.
//

#import "Card.h"

@implementation Card
@synthesize suit;
@synthesize value;
@synthesize pointsValue;


+(NSArray*)suits
{
    NSArray *suits = [NSArray new];
    suits = [NSArray arrayWithObjects: @"Hearts", @"Clubs", @"Diamonds", @"Spades", nil];
    return suits;
}

+(NSArray*)values
{
    NSArray *values = [NSArray new];
    for ( int i = 1 ; i <= 13 ; i++ ) {
        values = [values arrayByAddingObject: [NSNumber numberWithInt: i]];
    }
    return values;
}


-(int)pointsValue{
    if (self.value >= 10) {
        self.pointsValue = 10;
    } else if (self.value == 1){
        self.pointsValue = 11;
    } else {
        self.pointsValue = self.value;
    }
    return pointsValue;
}


-(NSString*) description {
    NSString* descriptiveValue;
        switch (self.value){
        case 1:
        descriptiveValue = @"Ace";
        break;
        case 11:
        descriptiveValue = @"Jack";
        break;
        case 12:
        descriptiveValue = @"Queen";
        break;
        case 13:
        descriptiveValue = @"King";
        break;
        default:
        descriptiveValue =[NSString stringWithFormat:@"%d", self.value];
        break;

        }

    return [NSString stringWithFormat:@"%@ of %@", descriptiveValue, self.suit];
}


@end