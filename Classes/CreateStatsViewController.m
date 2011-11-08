//
//  CreateStatsViewController.m
//  UIProtoBetter
//
//  Created by McKenzie Kurtz on 10/31/11.
//  Copyright 2011 Oregon Institute of Technology. All rights reserved.
//

#import "CreateStatsViewController.h"
#import "CreationMenuViewController.h"

@implementation CreateStatsViewController
@synthesize zoneSlider, instantSlider;
@synthesize zoneValue, instantValue;

-(IBAction)pressDone
{
	[self.navigationController popViewControllerAnimated:YES];
}

-(IBAction)instantSliderChanged:(id)sender
{
	//Update label and 
	UISlider *slider = (UISlider *)sender;
	int progressAsInt = (int)slider.value;
	NSString *newText = [[NSString alloc] initWithFormat:@"%d",progressAsInt];
	instantValue.text = newText;
	[newText release];
	
	//change zoneSlider acrodingly
	[zoneSlider setValue: 100 - progressAsInt];
	NSString *newText2 = [[NSString alloc] initWithFormat:@"%d",(100 - progressAsInt)];
	zoneValue.text = newText2;
	[newText2 release];
	
}

-(IBAction)zoneSliderChanged:(id)sender
{
	//Update label and 
	UISlider *slider = (UISlider *)sender;
	int progressAsInt = (int)slider.value;
	NSString *newText = [[NSString alloc] initWithFormat:@"%d",progressAsInt];
	zoneValue.text = newText;
	[newText release];
	
	//change instantSlider acrodingly
	[instantSlider setValue: 100 - progressAsInt];
	NSString *newText2 = [[NSString alloc] initWithFormat:@"%d",(100 - progressAsInt)];
	instantValue.text = newText2;
	[newText2 release];
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
	int progressAsInt = (int)(instantSlider.value + 0.5f);
	NSString *newText = [[NSString alloc] initWithFormat:@"%d",progressAsInt];
	instantValue.text = newText;
	[newText release];
	
	int progressAsInt1 = (int)(zoneSlider.value + 0.5f);
	NSString *newText2 = [[NSString alloc] initWithFormat:@"%d",progressAsInt1];
	zoneValue.text = newText;
	[newText2 release];
	
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
