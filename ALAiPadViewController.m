//
//  ALAiPadViewController.m
//  AudioList
//
//  Created by Austen Johnson on 5/8/14.
//  Copyright (c) 2014 Austen Johnson. All rights reserved.
//

#import "ALAiPadViewController.h"
#import "ALAiPadDetailVC.h"
#import "ALAiPadListTableVC.h"

@interface ALAiPadViewController () <UISplitViewControllerDelegate>

@end

@implementation ALAiPadViewController
{
    ALAiPadListTableVC *listVC;
    ALAiPadDetailVC *detailVC;
    UINavigationController *nc;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        
        detailVC = [[ALAiPadDetailVC alloc] initWithNibName:nil bundle:nil];
        nc = [[UINavigationController alloc] initWithRootViewController:detailVC];
        listVC = [[ALAiPadListTableVC alloc] initWithStyle:UITableViewStylePlain];
        listVC.detailVC = detailVC;
        
        self.viewControllers = @[listVC, nc];
        self.presentsWithGesture = YES;
        self.delegate = self;
    }
    return self;
}

-(void)splitViewController:(UISplitViewController *)svc willHideViewController:(UIViewController *)aViewController withBarButtonItem:(UIBarButtonItem *)barButtonItem forPopoverController:(UIPopoverController *)pc
{
    barButtonItem.title = @"Button";
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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// name, image, audio file, number times played, like/dislike

@end
