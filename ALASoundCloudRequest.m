//
//  ALASoundCloudRequest.m
//  AudioList
//
//  Created by Austen Johnson on 5/9/14.
//  Copyright (c) 2014 Austen Johnson. All rights reserved.
//

#define CLIENT_ID @"9c59d0655276399c15d4b3bcba56c1d1"
#import "ALASoundCloudRequest.h"

@implementation ALASoundCloudRequest

+ (NSDictionary *)getSoundCloudData
{
    NSString * soundCloudUrl = [NSString stringWithFormat:@"http://api.soundcloud.com/playlists/4252210.json?client_id=%@", CLIENT_ID];
    NSURL * url = [NSURL URLWithString:soundCloudUrl];
    
    NSURLRequest * request = [NSURLRequest requestWithURL:url];
    NSError * requestError = nil;
    NSURLResponse * response = nil;
    NSData * data = [NSURLConnection sendSynchronousRequest:request returningResponse:&response error:&requestError];
    
    NSError * jsonError = nil;
    NSDictionary * soundCloudData = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&jsonError];
    
    NSArray * tracks = soundCloudData[@"tracks"];
    NSDictionary * firstTrack = tracks[0];
    NSLog(@"sound cloud info %d", [tracks count]);
    NSLog(@"first track %@", firstTrack);
    
    return nil;
}


//4e0bec8c62a5dafe9dafc5ad4742870d

//65db70dfcdaab4cf033f9a4003a341e1 - jos

@end

