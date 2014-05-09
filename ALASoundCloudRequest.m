//
//  ALASoundCloudRequest.m
//  AudioList
//
//  Created by Austen Johnson on 5/9/14.
//  Copyright (c) 2014 Austen Johnson. All rights reserved.
//

#define CLIENT_ID @"9c59d0655276399c15d4b3bcba56c1d1"
#import "ALASoundCloudRequest.h"
#import "ALAPlaylist.h"
#import "ALAUser.h"
#import "ALATrack.h"

@implementation ALASoundCloudRequest

+ (NSDictionary *)getSoundCloudData
{
    NSString * soundCloudUrl = [NSString stringWithFormat:@"https://api.soundcloud.com/users/user227126911/playlists.json?client_id=%@", CLIENT_ID];
    NSURL * url = [NSURL URLWithString:soundCloudUrl];
    
    NSURLRequest * request = [NSURLRequest requestWithURL:url];
    NSError * requestError = nil;
    NSURLResponse * response = nil;
    NSData * data = [NSURLConnection sendSynchronousRequest:request returningResponse:&response error:&requestError];
    
    NSError * jsonError = nil;
    NSArray * soundCloudData = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&jsonError];
    
    
    for (NSDictionary *playListJson in soundCloudData)
    {
        ALAPlaylist * playlist = [[ALAPlaylist alloc] init];
        ALAUser * user = [[ALAUser alloc] init];
    
        user.playlist = [@[] mutableCopy];
        
        NSString *playListTitle = playListJson[@"title"];
        NSLog(@"%@", playListTitle);

    
        NSDictionary *userJson = playListJson[@"user"];
        NSString *userName = userJson[@"username"];
        NSLog(@"%@", userName);
    
        NSArray * tracksJsonData = playListJson[@"tracks"];
        for (NSDictionary *track in tracksJsonData)
        {
            NSString *currentSong = track[@"title"];
            NSLog(@"Track %@", currentSong);
            
            ALATrack * track = [[ALATrack alloc] init];
            
        }
    }
    return nil;
}


//4e0bec8c62a5dafe9dafc5ad4742870d

//65db70dfcdaab4cf033f9a4003a341e1 - jos

@end

