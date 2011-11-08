//
//  MainMenuViewController.m
//  UIProtoBetter
//
//  Created by McKenzie Kurtz on 10/29/11.
//  Copyright 2011 Oregon Institute of Technology. All rights reserved.
//

#import "MainMenuViewController.h"
#import "OfflineModeViewController.h"
#import "OnlineModeViewController.h"
#import "CreationMenuViewController.h"

@implementation MainMenuViewController

-(IBAction)pressOffline
{
	OfflineModeViewController *offlineMenuVC = [[OfflineModeViewController alloc] init];
	offlineMenuVC.title = @"Offline Mode";
	
	[self.navigationController pushViewController:offlineMenuVC animated:YES];
	[offlineMenuVC release];
}

-(IBAction)pressOnline
{
	OnlineModeViewController *onlineVC = [[OnlineModeViewController alloc] init];
	onlineVC.title = @"Online Mode";
	
	[self.navigationController pushViewController:onlineVC animated:YES];
	[onlineVC release];
}

-(IBAction)pressCreation
{
	//Allocate view controller needs corrosponding RELEASE CALL
	CreationMenuViewController *CVC = [[CreationMenuViewController alloc] init];
	CVC.title = @"Creation Menu";
	
	//Push view onto navigation controller
	[self.navigationController pushViewController:CVC animated:YES];
	
	//Release your object because its now owned by the navigation controller
	[CVC release];
	
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

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/

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
