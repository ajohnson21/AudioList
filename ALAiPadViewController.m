//
//  ALAiPadViewController.m
//  AudioList
//
//  Created by Austen Johnson on 5/8/14.
//  Copyright (c) 2014 Austen Johnson. All rights reserved.
//

#import "ALAiPadViewController.h"
#import "ALARealViewController.h"
#import "ALAiPadTableViewController.h"
#import "ALASingleton.h"

@interface ALAiPadViewController () <UISplitViewControllerDelegate>

@end

@implementation ALAiPadViewController
{
    ALAiPadTableViewController *listVC;
    ALARealViewController *detailVC;
    UINavigationController *nc;
    UILabel * songName;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        
                                        
        detailVC = [[ALARealViewController alloc] initWithNibName:nil bundle:nil];
        nc = [[UINavigationController alloc] initWithRootViewController:detailVC];
        listVC = [[ALAiPadTableViewController alloc] initWithStyle:UITableViewStylePlain];
        listVC.detailVC = detailVC;
        
        
        
        self.viewControllers = @[listVC, nc];
        self.presentsWithGesture = YES;
        self.delegate = self;
    }
    return self;
}

-(void)splitViewController:(UISplitViewController *)svc willHideViewController:(UIViewController *)aViewController withBarButtonItem:(UIBarButtonItem *)barButtonItem forPopoverController:(UIPopoverController *)pc
{
    barButtonItem.title = @"Display List";
    detailVC.navigationItem.leftBarButtonItem = barButtonItem;
    detailVC.navigationController.navigationBarHidden = NO;
    
}

-(void)splitViewController:(UISplitViewController *)svc willShowViewController:(UIViewController *)aViewController invalidatingBarButtonItem:(UIBarButtonItem *)barButtonItem
{
    nc.navigationBarHidden = YES;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    songName = [[UILabel alloc] initWithFrame:CGRectMake(20, 20, 100, 30)];
    songName.textColor = [UIColor blackColor];
    songName.font = [UIFont systemFontOfSize:30];
    [detailVC.view addSubview:songName];
}

-(void)setIndex:(NSInteger)index
{
    _index = index;
    
    NSDictionary * songInfo = [[ALASingleton sharedData] allSoundFiles][index];
    songName.text = songInfo[@"Song Name"];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// name, image, audio file, number times played, like/dislike

@end
