//
//  RootViewController.h
//  toRead
//
//  Created by Ingrid Funie on 12/04/2012.
//  Copyright (c) 2012 ICL. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RootViewController : UIViewController <UIPageViewControllerDelegate, UIGestureRecognizerDelegate>

@property (strong, nonatomic) UIPageViewController *pageViewController;

@end
