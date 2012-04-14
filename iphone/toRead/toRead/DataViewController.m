//
//  DataViewController.m
//  toRead
//
//  Created by Ingrid Funie on 12/04/2012.
//  Copyright (c) 2012 ICL. All rights reserved.
//

#import "DataViewController.h"

@implementation DataViewController

@synthesize dataLabel = _dataLabel;
@synthesize customView = _customView;
@synthesize dataObject = _dataObject;
@synthesize tableView = _tableView;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)loadView 
{
    [super loadView];
    
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:self.view.bounds];
    [imageView setImage:[UIImage imageNamed:@"paper.jpg"]];
    [self.customView addSubview:imageView];
    
    self.tableView = [[UITableView alloc] initWithFrame:self.customView.bounds];
    
    [self.tableView setBackgroundColor:[UIColor clearColor]];
    [self.customView setBackgroundColor:[UIColor clearColor]];
    [self.customView addSubview:self.tableView];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setCustomView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.dataLabel.text = [self.dataObject description];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)theTableView 
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)theTableView numberOfRowsInSection:(NSInteger)section 
{
    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)theTableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [theTableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
    }
    cell.textLabel.text = @"Hello, World";
    
    return cell;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

@end
