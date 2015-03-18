//
//  PhotoCollectionViewCell.h
//  MyBeautifulDay
//
//  Created by Yan Yang on 3/17/15.
//  Copyright (c) 2015 Yan Yang. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DiaryEntry;

@interface PhotoCollectionViewCell : UICollectionViewCell

+ (CGFloat)heightForEntry:(DiaryEntry *)entry;

@property (retain, nonatomic) IBOutlet UIImageView *imageView;
@property (retain, nonatomic) IBOutlet UIView *uiView;

@property (weak, nonatomic) IBOutlet UILabel *date;
@property (weak, nonatomic) IBOutlet UILabel *location;

- (void)configureCellForEntry:(DiaryEntry *)entry;
@end
