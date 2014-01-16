//
//  CoreDataRidersViewController.m
//  CoreData
//
//  Created by RajeshDanala on 1/15/14.
//  Copyright (c) 2014 Raj Danala. All rights reserved.
//

#import "CoreDataRidersViewController.h"
#import "CoreDataAppDelegate.h"
#import "RidersTableViewCell.h"

@interface CoreDataRidersViewController ()

@end

@implementation CoreDataRidersViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    CoreDataAppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    
    NSManagedObjectContext *context = [appDelegate managedObjectContext];
    
    NSEntityDescription *entityDesc = [NSEntityDescription entityForName:@"Riders" inManagedObjectContext:context];
    
    NSFetchRequest *request = [[NSFetchRequest alloc] init];
    [request setEntity:entityDesc];
    
    NSManagedObject *riders = nil;
    
    NSError *error;
    _ridersList = [context executeFetchRequest:request error:&error];
    
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"riderTableCell";
    RidersTableViewCell *cell = [tableView
                              dequeueReusableCellWithIdentifier:CellIdentifier
                              forIndexPath:indexPath];
    
    // Configure the cell...
    
    long row = [indexPath row];
    
    cell.bib.text = _ridersList[row];
    cell.name.text = _ridersList[row];
    
    return cell;
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return 1;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
