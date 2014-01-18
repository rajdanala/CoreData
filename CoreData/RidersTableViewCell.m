//
//  RidersTableViewCell.m
//  CoreData
//
//  Created by RajeshDanala on 1/15/14.
//  Copyright (c) 2014 Raj Danala. All rights reserved.
//

#import "RidersTableViewCell.h"

@implementation RidersTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
   // this needs to be removed
}

@end
