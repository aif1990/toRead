//
//  DetailViewController.h
//  toRead
//
//  Created by Ingrid Funie on 19/04/2012.
//  Copyright (c) 2012 ICL. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DataViewController;

@interface DetailViewController : UIViewController {
    DataViewController *dataViewController;
}
@property (weak, nonatomic) IBOutlet UIButton *doneButton;
@property (weak, nonatomic) IBOutlet UILabel *detailLabel;
@property (nonatomic, retain) DataViewController *dataViewController; 
- (IBAction)done:(id)sender;

@end
