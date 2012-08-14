//
//  ViewController.m
//  BlackJack
//
//  Created by Rose CW on 8/10/12.
//  Copyright (c) 2012 Rose CW. All rights reserved.
//

#import "ViewController.h"
#import "Game.h"
#import "Hand.h"

@interface ViewController ()

@end

@implementation ViewController{
    Game *currentGame;
}
@synthesize showDealerCards;
@synthesize showPlayerCards;
@synthesize dealButton;
@synthesize showDealerHand;
@synthesize showPlayerHand;



//-(id)init{
//    NSLog(@"initializing...");
//    self = [super init];
//    if (self) {
//
//    }
//    return self;
//}


- (void) showPlayerCardsAndScore {
    showPlayerHand.text = [[NSString alloc] initWithFormat: @"%d", [currentGame.playerHand getValueFromHand]];
    showPlayerCards.text = [currentGame.playerHand getDescriptionOfCards];
}

- (void) showDealerCardsAndScore {
    showDealerHand.text = [[NSString alloc] initWithFormat: @"%d", [currentGame.dealerHand getValueFromHand]];
    showDealerCards.text = [currentGame.dealerHand getDescriptionOfCards];
}


- (IBAction)hit:(id)sender {
    [currentGame hit];
    [self showPlayerCardsAndScore];
    
     if ([currentGame.playerHand bust]) {
         [self showDealerCardsAndScore];
         [self showAlert];
     }
}

-(IBAction)stand:(id)sender{
    [currentGame stand];
    [self showDealerCardsAndScore];
    
    [self showAlert];
    
}


- (void)viewDidUnload {
    [self setShowDealerHand:nil];
    [self setShowPlayerHand:nil];
    [self setShowDealerCards:nil];
    [self setShowPlayerCards:nil];
    [self setDealButton:nil];
    
    [super viewDidUnload];
}



- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}
- (IBAction)clickDeal:(id)sender {
    [self makeGame];
    if (currentGame){
        dealButton.hidden = YES;
    }
}

- (void) makeGame {
    currentGame = [[Game alloc] init];
    [self showPlayerCardsAndScore];
    showDealerCards.text = @"Dealer Cards Hidden";
    showDealerHand.text = @"-";
}

-(IBAction)showAlert{
    NSString *message = [NSString stringWithFormat: @"%@", [currentGame endOfGame]];


    UIAlertView *alertView = [[UIAlertView alloc]

                              initWithTitle:@"End of the Round!"
                              message:message
                              delegate:self
                              cancelButtonTitle:nil
                              otherButtonTitles:@"Play Again!", nil];


    [alertView show];
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{

    if(buttonIndex == 0)
    {
        [self makeGame];
    }
}






@end
