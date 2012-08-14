//
//  ViewController.h
//  BlackJack
//
//  Created by Rose CW on 8/10/12.
//  Copyright (c) 2012 Rose CW. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
- (IBAction)hit:(id)sender;
-(IBAction)stand:(id)sender;
- (IBAction)clickDeal:(id)sender;
- (void)makeGame;

@property (weak, nonatomic) IBOutlet UILabel *showDealerHand;

@property (weak, nonatomic) IBOutlet UILabel *showPlayerHand;

-(IBAction)showAlert;
@property (weak, nonatomic) IBOutlet UILabel *showDealerCards;
@property (weak, nonatomic) IBOutlet UILabel *showPlayerCards;
@property (weak, nonatomic) IBOutlet UIButton *dealButton;
@property (weak, nonatomic) IBOutlet UIButton *hitMeButton;
@property (weak, nonatomic) IBOutlet UIButton *standButton;

@end
