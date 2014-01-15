//
//  CoreDataAppDelegate.h
//  CoreData
//
//  Created by RajeshDanala on 1/14/14.
//  Copyright (c) 2014 Raj Danala. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CoreDataAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@end
