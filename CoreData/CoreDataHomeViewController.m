//
//  CoreDataHomeViewController.m
//  CoreData
//
//  Created by RajeshDanala on 1/15/14.
//  Copyright (c) 2014 Raj Danala. All rights reserved.
//

#import "CoreDataHomeViewController.h"

@interface CoreDataHomeViewController ()

@end

@implementation CoreDataHomeViewController

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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)returned:(UIStoryboardSegue *)segue{
}


@end
