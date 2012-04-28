//
//  ViewController.h
//  toRead
//
//  Created by Ingrid Funie on 28/04/2012.
//  Copyright (c) 2012 ICL. All rights reserved.
//

#import <UIKit/UIKit.h>
@class DetailViewController;


@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate> {
    DetailViewController *detailView;
    UITableView *tableView;
}
@property (strong, nonatomic) IBOutlet UIView *customView;
@property (nonatomic, retain) UITableView *tableView;
@property(nonatomic, retain) DetailViewController *detailView;
@end
