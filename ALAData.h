//
//  ALAData.h
//  AudioList
//
//  Created by Austen Johnson on 5/12/14.
//  Copyright (c) 2014 Austen Johnson. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ALASong.h"

@interface ALAData : NSObject

+ (ALAData *)mainData;

- (void)addNewTrack:(ALASong *)track;
- (NSArray *)allTracks;


@end
