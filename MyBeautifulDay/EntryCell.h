//
//  EntryCell.h
//  MyBeautifulDay
//
//  Created by Yan Yang on 3/14/15.
//  Copyright (c) 2015 Yan Yang. All rights reserved.
//
//  Costumize the cell

#import <UIKit/UIKit.h>

@class DiaryEntry;

@interface EntryCell : UITableViewCell

+ (CGFloat)heightForEntry:(DiaryEntry *)entry;
@property (weak, nonatomic) IBOutlet UILabel *date;
@property (weak, nonatomic) IBOutlet UILabel *body;
@property (weak, nonatomic) IBOutlet UILabel *location;
@property (weak, nonatomic) IBOutlet UIImageView *image;
@property (weak, nonatomic) IBOutlet UIImageView *mood;

- (void)configureCellForEntry:(DiaryEntry *)entry;



@end
