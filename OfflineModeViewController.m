//
//  OfflineModeViewController.m
//  UIProtoBetter
//
//  Created by McKenzie Kurtz on 10/29/11.
//  Copyright 2011 Oregon Institute of Technology. All rights reserved.
//

#import "OfflineModeViewController.h"
#import "StashViewController.h"
#import "StoreViewController.h"
#import "FightViewController.h"

@implementation OfflineModeViewController

-(IBAction)pressHeal
{
	FightViewController *fightVC = [[FightViewController alloc] init];
	fightVC.title = @"Fight";
	[self.navigationController pushViewController:fightVC animated:YES];
}

-(IBAction)pressStash
{
	StashViewController *stashVC = [[StashViewController alloc] init];
	stashVC.title = @"Stash";
	[self.navigationController pushViewController:stashVC animated:YES];

}

-(IBAction)pressStore
{
	StoreViewController *storeVC = [[StoreViewController alloc] init];
	storeVC.title = @"Store";
	[self.navigationController pushViewController:storeVC animated:YES];

}

// The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
/*
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization.
    }
    return self;
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];

}


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations.
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc. that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}


@end
