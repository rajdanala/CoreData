//
//  CoreDataViewController.h
//  CoreData
//
//  Created by RajeshDanala on 1/14/14.
//  Copyright (c) 2014 Raj Danala. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CoreDataViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *bib;
@property (weak, nonatomic) IBOutlet UITextField *firstName;

@property (weak, nonatomic) IBOutlet UITextField *lastName;

@property (weak, nonatomic) IBOutlet UILabel *status;

- (IBAction)findContact:(id)sender;

- (IBAction)saveData:(id)sender;

-(IBAction)textFieldReturn:(id)sender;

@end
