//
//  ALASingleton.m
//  AudioList
//
//  Created by Austen Johnson on 5/8/14.
//  Copyright (c) 2014 Austen Johnson. All rights reserved.
//

#import "ALASingleton.h"

@interface ALASingleton ()
@property (nonatomic) NSMutableArray * soundFiles;

@end

@implementation ALASingleton
{
//    NSMutableArray * soundFiles;
}

+(ALASingleton *)sharedData
{
    static dispatch_once_t create;
    static ALASingleton * singleton = nil;
    
    dispatch_once(&create, ^{
        singleton = [[ALASingleton alloc] init];
    });
    
    return singleton;
}

-(NSMutableArray *) soundFiles
{
    
    if (_soundFiles == nil)
    {
        _soundFiles = [@[
                        @{@"name" : @"Austen",@"image" : @"Picture",@"audio" : @"Soundfile",@"numOfPlays" : @"Count",@"like/dislike" : @"number"},
                        @{@"name" : @"Austen",@"image" : @"Picture",@"audio" : @"Soundfile",@"numOfPlays" : @"Count",@"like/dislike" : @"number"},
                        @{@"name" : @"Austen",@"image" : @"Picture",@"audio" : @"Soundfile",@"numOfPlays" : @"Count",@"like/dislike" : @"number"},
                        @{@"name" : @"Austen",@"image" : @"Picture",@"audio" : @"Soundfile",@"numOfPlays" : @"Count",@"like/dislike" : @"number"},
                        @{@"name" : @"Austen",@"image" : @"Picture",@"audio" : @"Soundfile",@"numOfPlays" : @"Count",@"like/dislike" : @"number"}
                        ] mutableCopy];

    }
    return _soundFiles;
    
}

-(NSArray *)allSoundFiles
{
    return [self.soundFiles copy];

}

@end
