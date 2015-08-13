//
//  PlayersViewController.h
//  Ratings
//
//  Created by dmi on 12/08/15.
//  Copyright (c) 2015 dmi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PlayersDetailViewController.h"

@interface PlayersViewController : UITableViewController <PlayersDetailViewControllerDelegate>

@property (strong,nonatomic) NSMutableArray *players;

@end
