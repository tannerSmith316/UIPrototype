//
//  InfectResultsViewControllerModal.h
//  UIProtoBetter
//
//  Created by McKenzie Kurtz on 10/29/11.
//  Copyright 2011 Oregon Institute of Technology. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface InfectResultsViewControllerModal : UIViewController {
	IBOutlet UILabel *resultsLabel;
	NSString *label;
}


@property(copy)NSString *label;
-(IBAction)pressDone;

@end
