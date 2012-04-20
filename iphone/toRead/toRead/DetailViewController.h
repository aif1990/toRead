//
//  DetailViewController.h
//  toRead
//
//  Created by Ingrid Funie on 19/04/2012.
//  Copyright (c) 2012 ICL. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *doneButton;
- (IBAction)done:(id)sender;

@end
