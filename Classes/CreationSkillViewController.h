//
//  CreationSkillViewController.h
//  UIProtoBetter
//
//  Created by McKenzie Kurtz on 10/31/11.
//  Copyright 2011 Oregon Institute of Technology. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface CreationSkillViewController : UIViewController {
	IBOutlet UIButton *nextButton;
	int didStats;
}

-(IBAction)pressNext;

@end
