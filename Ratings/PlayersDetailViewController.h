//
//  PlayersDetailViewController.h
//  Ratings
//
//  Created by dmi on 12/08/15.
//  Copyright (c) 2015 dmi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GamePickerViewController.h"

@class PlayersDetailViewController;
@class Player;

@protocol PlayersDetailViewControllerDelegate <NSObject>
- (void)playersDetailViewControllerDidCancel:(PlayersDetailViewController *)controller;
- (void)playersDetailViewController:(PlayersDetailViewController *)controller didAddPlayer: (Player *)player;
@end

@interface PlayersDetailViewController : UITableViewController <GamePickerViewControllerDelegate>

@property (weak, nonatomic) IBOutlet UILabel *detailLabel;
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;

@property (nonatomic,weak) id <PlayersDetailViewControllerDelegate> delegate;

-(IBAction)cancel:(id)sender;
-(IBAction)save:(id)sender;

@end
