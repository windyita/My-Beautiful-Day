//
//  PhotoDetailViewController.h
//  MyBeautifulDay
//
//  Created by Yan Yang on 3/17/15.
//  Copyright (c) 2015 Yan Yang. All rights reserved.
//

#import <UIKit/UIKit.h>
@class DiaryEntry;

@interface PhotoDetailViewController : UIViewController

@property (nonatomic, strong) DiaryEntry *entry;

@property (weak, nonatomic) IBOutlet UILabel *date;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *location;


@end
