//
//  CoreDataViewController.m
//  CoreData
//
//  Created by RajeshDanala on 1/14/14.
//  Copyright (c) 2014 Raj Danala. All rights reserved.
//

#import "CoreDataViewController.h"
#import "CoreDataAppDelegate.h"

@interface CoreDataViewController ()

@end

@implementation CoreDataViewController

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

- (IBAction)findContact:(id)sender {
    
//    CoreDataAppDelegate *appDelegate =
//    [[UIApplication sharedApplication] delegate];
//    
//    NSManagedObjectContext *context =
//    [appDelegate managedObjectContext];
//    
//    NSEntityDescription *entityDesc =
//    [NSEntityDescription entityForName:@"Contacts"
//                inManagedObjectContext:context];
//    
//    NSFetchRequest *request = [[NSFetchRequest alloc] init];
//    [request setEntity:entityDesc];
//    
//    NSPredicate *pred =
//    [NSPredicate predicateWithFormat:@"(name = %@)",
//     _name.text];
//    [request setPredicate:pred];
//    NSManagedObject *matches = nil;
//    
//    NSError *error;
//    NSArray *objects = [context executeFetchRequest:request
//                                              error:&error];
//    
//    if ([objects count] == 0) {
//        _status.text = @"No matches";
//    } else {
//        matches = objects[0];
//        _address.text = [matches valueForKey:@"address"];
//        _phone.text = [matches valueForKey:@"phone"];
//        _status.text = [NSString stringWithFormat:
//                        @"%lu matches found", (unsigned long)[objects count]];
//    }
    CoreDataAppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    
    NSManagedObjectContext *context = [appDelegate managedObjectContext];
    
    NSEntityDescription *entityDesc = [NSEntityDescription entityForName:@"Riders" inManagedObjectContext:context];
    
    NSFetchRequest *request = [[NSFetchRequest alloc] init];
    [request setEntity:entityDesc];
    
    NSPredicate *pred = [NSPredicate predicateWithFormat:@"bib=%@",_bib.text];
    [request setPredicate:pred];
    
    NSManagedObject *matches = nil;
    
    NSError *error;
    NSArray *objects = [context executeFetchRequest:request error:&error];
    
    if ([objects count] == 0){
        _status.text = @"No matches";
    } else {
        matches = objects[0];
        _firstName.text = [matches valueForKey:@"firstname"];
        _lastName.text = [matches valueForKey:@"lastname"];
        _status.text = [NSString stringWithFormat:@"%lu matches found",(unsigned long)[objects count]];
    }
    
}

- (IBAction)saveData:(id)sender {
    
//    CoreDataAppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
//    
//    NSManagedObjectContext *context = [appDelegate managedObjectContext];
//    
//    NSManagedObject *newContact;
//    newContact = [NSEntityDescription
//                  insertNewObjectForEntityForName:@"Contacts"
//                  inManagedObjectContext:context];
//    [newContact setValue: _name.text forKey:@"name"];
//    [newContact setValue: _address.text forKey:@"address"];
//    [newContact setValue: _phone.text forKey:@"phone"];
//    _name.text = @"";
//    _address.text = @"";
//    _phone.text = @"";
//    NSError *error;
//    [context save:&error];
//    _status.text = @"Contact saved";
//
    
    CoreDataAppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    
    NSManagedObjectContext *context = [appDelegate managedObjectContext];
    
    NSManagedObject *newRider = [NSEntityDescription insertNewObjectForEntityForName:@"Riders" inManagedObjectContext:context];
    
    [newRider setValue: _bib.text forKey:@"bib"];
    [newRider setValue:_firstName.text forKey:@"firstname"];
    [newRider setValue:_lastName.text forKey:@"lastname"];
    
    _bib.text=@"";
    _firstName.text=@"";
    _lastName.text =@"";
    
    NSError *error;
    [context save:&error];
    _status.text = @"Saved";
    
}


-(IBAction)textFieldReturn:(id)sender{
    [sender resignFirstResponder];
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    UITouch *touch = [[event allTouches] anyObject];
    if([_bib isFirstResponder] && [touch view] != _bib){
        [_bib resignFirstResponder];
    }else if([_firstName isFirstResponder] && [touch view] != _firstName){
        [_firstName resignFirstResponder];    }
    else if([_lastName isFirstResponder] && [touch view] != _lastName){
            [_lastName resignFirstResponder];
    }
    [super touchesBegan:touches withEvent:event];
}
@end
