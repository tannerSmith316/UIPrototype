//
//  UIProtoBetterAppDelegate.h
//  UIProtoBetter
//
//  Created by McKenzie Kurtz on 10/29/11.
//  Copyright 2011 Oregon Institute of Technology. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIProtoBetterAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
	UINavigationController *startOutbreakNC;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@end

