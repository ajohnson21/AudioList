//
//  ALASong.m
//  AudioList
//
//  Created by Austen Johnson on 5/12/14.
//  Copyright (c) 2014 Austen Johnson. All rights reserved.
//

#import "ALASong.h"

@implementation ALASong
{
    NSMutableDictionary * dict;
}

+ (id)newTrack
{
    return [[ALASong alloc] init];
}

-(id)init
{
    self = [super init];
    if(self)
    {
        dict = [@{} mutableCopy];
    }
    return self;
}

- (id)objectForKey:(id)aKey
{
    return dict[aKey];
}

- (void)setObject:(id)anObject forKey:(id<NSCopying>)aKey
{
    dict[aKey] = anObject;
}

-(void)removeObjectForKey:(id)aKey
{
    [dict removeObjectForKey:aKey];
}

- (NSUInteger)count
{
    return [dict count];
}
    
-(NSEnumerator *)keyEnumerator
{
    return [dict keyEnumerator];
}
    
    
    
    
    @end
