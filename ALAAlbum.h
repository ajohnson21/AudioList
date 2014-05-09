//
//  ALAAlbum.h
//  AudioList
//
//  Created by Austen Johnson on 5/9/14.
//  Copyright (c) 2014 Austen Johnson. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ALAArtist.h"

@interface ALAAlbum : NSDictionary

@property (nonatomic) ALAArtist * artist;
@property (nonatomic) NSArray * songs;

@end
