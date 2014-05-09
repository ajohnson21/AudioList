//
//  ALASong.h
//  AudioList
//
//  Created by Austen Johnson on 5/9/14.
//  Copyright (c) 2014 Austen Johnson. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ALAArtist.h"
#import "ALAAlbum.h"

@interface ALASong : NSDictionary

@property (nonatomic) ALAArtist * artist;
@property (nonatomic) ALAAlbum * album;

@end
