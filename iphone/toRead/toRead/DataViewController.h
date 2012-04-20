//
//  DataViewController.h
//  toRead
//
//  Created by Ingrid Funie on 12/04/2012.
//  Copyright (c) 2012 ICL. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DetailViewController;

@interface DataViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>
{
    UITableView *tableView;
    DetailViewController *detailView;
}

@property (strong, nonatomic) IBOutlet UILabel *dataLabel;
@property (weak, nonatomic) IBOutlet UIView *customView;
@property (nonatomic, retain) UITableView *tableView;
@property (strong, nonatomic) id dataObject;
@property(nonatomic, retain) DetailViewController *detailView;

@end
