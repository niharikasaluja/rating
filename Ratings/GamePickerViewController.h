//
//  GamePickerViewController.h
//  Ratings
//
//  Created by dmi on 13/08/15.
//  Copyright (c) 2015 dmi. All rights reserved.
//

#import <UIKit/UIKit.h>
@class GamePickerViewController;
@protocol GamePickerViewControllerDelegate <NSObject>

-(void)gamePickerViewController : (GamePickerViewController *)controller  didSelectGame : (NSString *)game;


@end


@interface GamePickerViewController : UITableViewController

@property (nonatomic,weak) id <GamePickerViewControllerDelegate> delegate;
@property(nonatomic,strong) NSString *game;

@end