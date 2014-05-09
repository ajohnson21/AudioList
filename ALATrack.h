//
//  ALASong.h
//  AudioList
//
//  Created by Austen Johnson on 5/9/14.
//  Copyright (c) 2014 Austen Johnson. All rights reserved.
//

#import <Foundation/Foundation.h>
@class ALAUser;
@class ALAPlaylist;

@interface ALATrack : NSDictionary

@property (nonatomic) ALAUser * user;
@property (nonatomic) ALAPlaylist * playlist;

@end
