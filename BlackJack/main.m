//
//  main.m
//  BlackJack
//
//  Created by Rose CW on 8/10/12.
//  Copyright (c) 2012 Rose CW. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "AppDelegate.h"
#import "Deck.h"

int main(int argc, char *argv[])
{
    @autoreleasepool {
        
        Deck* trialDeck = [Deck new];
        NSLog (@"%@", [trialDeck generateTheDeck]);
    
        
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));

    }
}
