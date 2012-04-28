//
//  DetailViewController.h
//  toRead
//
//  Created by Ingrid Funie on 28/04/2012.
//  Copyright (c) 2012 ICL. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ViewController;
@class DoneViewController;

@interface DetailViewController : UIViewController {
    ViewController *viewController;
    DoneViewController *doneViewController;
}


- (IBAction)done:(id)sender;

@property (nonatomic, retain) ViewController *viewController; 
@property (nonatomic, retain) DoneViewController *doneViewController;

@end
