//
//  ALATableViewCell.m
//  AudioList
//
//  Created by Austen Johnson on 5/8/14.
//  Copyright (c) 2014 Austen Johnson. All rights reserved.
//

#import "ALATableViewCell.h"
#import "ALASingleton.h"
#import "ALAiPadTableViewController.h"

@implementation ALATableViewCell
{
    UILabel *songName;
    UIImageView *songImage;
}

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        
//        songImage = [[UIImageView alloc] initWithFrame:CGRectMake(20, 20, 200, 30)];
//        songImage.layer.cornerRadius = 15;
//        songImage.layer.masksToBounds = YES;
//        [self.contentView addSubview:songImage];
        
        songName = [[UILabel alloc] initWithFrame:CGRectMake(20, 20, 200, 30)];
        songName.textColor = [UIColor blackColor];
        songName.font = [UIFont systemFontOfSize:30];
        [self.contentView addSubview:songName];
        
        
    }
    return self;
}

-(void)setIndex:(NSInteger)index
{
    _index = index;
    
    NSDictionary * songInfo = [[ALASingleton sharedData] allSoundFiles][index];
    songName.text = songInfo[@"name"];
    NSLog(@"%d %@", (int)index, songInfo);

    
//    songName.text =
}



- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
