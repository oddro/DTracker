//
//  AppDelegate.h
//  VAVA CACA
//
//  Created by Flash on 3/14/14.
//  Copyright curve7 2014. All rights reserved.
//
// -----------------------------------------------------------------------

#import <UIKit/UIKit.h>
#import "dashboardViewController.h"
@interface AppDelegate : UIResponder <UIApplicationDelegate>
{
	dashboardViewController *dashboard;
}
-(void)sharedplayMusic:(NSString *)path filename:(NSString *)filename;
@property (strong, nonatomic) UIWindow *window;

@end
