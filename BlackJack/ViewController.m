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






- (IBAction)hit:(id)sender {
    [currentGame hit];
    showPlayerHand.text = [[NSString alloc] initWithFormat: @"%d", [currentGame.playerHand getValueFromHand]];
}
-(IBAction)stand:(id)sender{
    [currentGame stand];
    showDealerHand.text = [[NSString alloc] initWithFormat: @"%d", [currentGame.dealerHand getValueFromHand]];
}


- (void)viewDidUnload {
    [self setShowDealerHand:nil];
    [self setShowPlayerHand:nil];
    [super viewDidUnload];
}



- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}
- (IBAction)newGame:(id)sender {
    currentGame = [[Game alloc] init];
    showDealerHand.text = [[NSString alloc] initWithFormat: @"%d", [currentGame.dealerHand getValueFromHand]];
    showPlayerHand.text = [[NSString alloc] initWithFormat: @"%d", [currentGame.playerHand getValueFromHand]];
}
//
//-(IBAction)showAlert{
//    NSString *message = [NSString stringWithFormat: @"%@", self.outcome];
//    
//    
//    UIAlertView *alertView = [[UIAlertView alloc]
//                              
//                              initWithTitle:@"End of the Round!"
//                              message:message
//                              delegate:nil
//                              cancelButtonTitle:@"OK"
//                              otherButtonTitles:@"Play Again!", nil];
//    
//    
//    [alertView show];
//}
//
//- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
//{
//    NSString *title = [alertView buttonTitleAtIndex:buttonIndex];
//    
//    if([title isEqualToString:@"Play Again!"])
//    {
//        currentGame = [[Game alloc] init];
//        
//    }
//}


@end
