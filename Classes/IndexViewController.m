//
//  IndexViewController.m
//  UIProtoBetter
//
//  Created by McKenzie Kurtz on 10/29/11.
//  Copyright 2011 Oregon Institute of Technology. All rights reserved.
//

#import "IndexViewController.h"
#import "HelpViewController.h"
#import "MainMenuViewController.h"


@implementation IndexViewController

-(IBAction)pressHelp
{
	//Make View controller
	HelpViewController *helpVC = [[HelpViewController alloc] init];
	helpVC.title = @"Help";
	
	//Push view controller unto navigation stack
	[self.navigationController pushViewController:helpVC animated:YES];
	[helpVC release];
}

-(IBAction)pressStart
{
	MainMenuViewController *mainVC = [[MainMenuViewController alloc] init];
	mainVC.title = @"Outbreak Menu";
	
	[self.navigationController pushViewController:mainVC animated:YES];
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
