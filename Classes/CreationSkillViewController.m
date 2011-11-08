//
//  CreationSkillViewController.m
//  UIProtoBetter
//
//  Created by McKenzie Kurtz on 10/31/11.
//  Copyright 2011 Oregon Institute of Technology. All rights reserved.
//

#import "CreationSkillViewController.h"
#import "CreationHelpViewController.h"
#import "CreateStatsViewController.h"

@implementation CreationSkillViewController

-(IBAction)pressNext
{
	CreateStatsViewController *statVC = [[CreateStatsViewController alloc] init];
	statVC.title = @"Stat Allocation";
	
	[self.navigationController pushViewController:statVC animated:YES];
	[statVC release];
	
	//2 is true
	didStats = 2;
	
}

-(void)viewDidAppear:(BOOL)animated
{
	if(didStats == 2)
		[self.navigationController popViewControllerAnimated:YES];
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
	
	CreationHelpViewController *helpModal = [[CreationHelpViewController alloc] init];
	helpModal.title = @"Creation Help";
	
	[self presentModalViewController:helpModal animated:YES];
	[helpModal release];
	self.navigationItem.hidesBackButton = YES;
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
