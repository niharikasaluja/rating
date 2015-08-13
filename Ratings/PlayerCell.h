//
//  PlayerCell.h
//  Ratings
//
//  Created by dmi on 12/08/15.
//  Copyright (c) 2015 dmi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PlayerCell : UITableViewCell

@property (nonatomic,weak) IBOutlet UILabel *nameLabel;
@property (nonatomic,weak) IBOutlet UILabel *gameLabel;
@property (nonatomic,weak) IBOutlet UIImageView *ratingImageView;

@end
