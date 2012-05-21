//
//  DoneViewController.m
//  toRead
//
//  Created by Ingrid Funie on 28/04/2012.
//  Copyright (c) 2012 ICL. All rights reserved.
//

#import "DoneViewController.h"
#import "DetailViewController.h"

@implementation DoneViewController
@synthesize customView = _customView;
@synthesize detailView = _detailView;
@synthesize tableView = _tableView;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:@"DoneView" bundle:nil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle


// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView
{
}



// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    
    [super loadView];
    
    self.tableView = [[UITableView alloc] initWithFrame:self.customView.bounds];
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    self.tableView.backgroundColor = [UIColor clearColor];
    self.customView.backgroundColor = [UIColor clearColor];
    
     self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    
    [self.customView addSubview:self.tableView];

}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)theTableView 
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)theTableView numberOfRowsInSection:(NSInteger)section 
{
    return 2;
}


- (UITableViewCell *)tableView:(UITableView *)theTableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
    }
    cell.textLabel.text = @"Hi Ingrid";
    cell.textLabel.textColor = [UIColor whiteColor];
    cell.detailTextLabel.text = @"2012-03-07";
    cell.detailTextLabel.textColor = [UIColor grayColor];
    cell.textLabel.font = [UIFont fontWithName:@"Chalkduster" size:14.00];
    cell.detailTextLabel.font = [UIFont fontWithName:@"Chalkduster" size:9.00];
    
   // cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    cell.accessoryType = UITableViewCellAccessoryDetailDisclosureButton;

    
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    
    return cell;
    
    
}

-(void) tableView:(UITableView *)tableView accessoryButtonTappedForRowWithIndexPath:(NSIndexPath *)indexPath {
    _detailView = [self.storyboard instantiateViewControllerWithIdentifier:@"detailView"];
    _detailView.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    
    _detailView.doneViewController = self;
    
    [self presentModalViewController:_detailView animated:YES];
    [self.tableView deselectRowAtIndexPath:indexPath animated:YES];
}


-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath 
{
    [self.tableView cellForRowAtIndexPath:indexPath].detailTextLabel.textColor = [UIColor greenColor];  
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
