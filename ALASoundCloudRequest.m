//
//  ALASoundCloudRequest.m
//  AudioList
//
//  Created by Austen Johnson on 5/12/14.
//  Copyright (c) 2014 Austen Johnson. All rights reserved.
//

#define CLIENT_ID @"client_id=9c59d0655276399c15d4b3bcba56c1d1"
#define USER_NAME @"user227126911"
#define SC_API @"https://api.soundcloud.com"

#import "ALASoundCloudRequest.h"
#import "ALAData.h"

@implementation ALASoundCloudRequest

+(void)updateData
{
    NSURL * requestURL = [NSURL URLWithString:[NSString stringWithFormat:@"%@/users/%@/playlists.json?%@", SC_API, USER_NAME, CLIENT_ID]];
    NSURLRequest * request = [NSURLRequest requestWithURL:requestURL];
    
    NSOperationQueue * queue = [[NSOperationQueue alloc] init];
    [NSURLConnection sendAsynchronousRequest:request queue: queue completionHandler:^(NSURLResponse *response, NSData *data, NSError *connectionError) {
        
        NSArray * scInfo = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
        
        for (NSDictionary * playlist in scInfo)
        {
            // create new playlist and set things like playlist title
            
            for (NSDictionary * trackInfo in playlist[@"tracks"])
            {
                if (![trackInfo[@"streamable"] boolValue]) continue;
                
                ALASong * track = [ALASong newTrack];
                track[@"title"] = trackInfo[@"title"];
//                [track setObject:@"title" forKey:@"title"];
                track[@"url"] = trackInfo[@"stream_url"];
                
                [[ALAData mainData] addNewTrack:track];
                
            }
        }
        
        NSLog(@"%@", [[ALAData mainData] allTracks]);
        
//        dispatch_async(dispatch_get_main_queue(), ^{
        
            NSNotificationCenter * nCenter = [NSNotificationCenter defaultCenter];
            [nCenter postNotificationName:@"dataUpdated" object:nil];
//        });
        
            }];

  
}

@end
