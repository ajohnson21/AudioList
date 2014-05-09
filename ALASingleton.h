//
//  ALASingleton.h
//  AudioList
//
//  Created by Austen Johnson on 5/8/14.
//  Copyright (c) 2014 Austen Johnson. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ALASingleton : NSObject


+ (ALASingleton *)sharedData;

//@property (nonatomic) NSMutableArray * soundFiles;

-(NSArray *)allSoundFiles;

@end
