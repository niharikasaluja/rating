//
//  Player.h
//  Ratings
//
//  Created by dmi on 12/08/15.
//  Copyright (c) 2015 dmi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject

@property (nonatomic,copy) NSString *name;
@property (nonatomic,copy) NSString *game;
@property (nonatomic,assign) int rating;

@end
