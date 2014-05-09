//
//  ALAAlbum.h
//  AudioList
//
//  Created by Austen Johnson on 5/9/14.
//  Copyright (c) 2014 Austen Johnson. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ALAUser.h"

@interface ALAPlaylist : NSDictionary

@property (nonatomic) ALAUser * artist;
@property (nonatomic) NSArray * songs;

@end
