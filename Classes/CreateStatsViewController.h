//
//  CreateStatsViewController.h
//  UIProtoBetter
//
//  Created by McKenzie Kurtz on 10/31/11.
//  Copyright 2011 Oregon Institute of Technology. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface CreateStatsViewController : UIViewController {
	IBOutlet UISlider *instantSlider;
	IBOutlet UISlider *zoneSlider;
	IBOutlet UILabel *instantValue;
	IBOutlet UILabel *zoneValue;
}

-(IBAction)pressDone;
-(IBAction)instantSliderChanged:(id)sender;
-(IBAction)zoneSliderChanged:(id)sender;

@property(nonatomic, retain)IBOutlet UILabel *zoneValue;
@property(nonatomic, retain)IBOutlet UILabel *instantValue;
@property(nonatomic, retain)IBOutlet UISlider *instantSlider;
@property(nonatomic, retain)IBOutlet UISlider *zoneSlider;
@end
