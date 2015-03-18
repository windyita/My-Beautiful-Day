//
//  PhotoCollectionViewCell.m
//  MyBeautifulDay
//
//  Created by Yan Yang on 3/17/15.
//  Copyright (c) 2015 Yan Yang. All rights reserved.
//

#import "PhotoCollectionViewCell.h"
#import "DiaryEntry.h"

@implementation PhotoCollectionViewCell
@synthesize imageView = _imageView;

- (id)initWithFrame:(CGRect)frame
{
    
    self = [super initWithFrame:frame];
    if (self) {
        NSLog(@"init cell");
        _imageView = [[UIImageView alloc] initWithFrame:self.contentView.bounds];
        _uiView = [[UIView alloc] initWithFrame:self.contentView.bounds];
        [self.contentView addSubview:_imageView];
        //[self.contentView addSubview:_uiView];
    }
    return self;
}


- (void)prepareForReuse
{
    [super prepareForReuse];
    
    // reset image property of imageView for reuse
    self.imageView.image = nil;
    
    // update frame position of subviews
    self.imageView.frame = self.contentView.bounds;
}

- (void)configureCellForEntry:(DiaryEntry *)entry{
    self.location.text = entry.location;
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc]init];
    [dateFormatter setDateFormat:@"EEEE, MMMM d yyyy"];
    NSDate *date = [NSDate dateWithTimeIntervalSince1970:entry.date];
    self.date.text = [dateFormatter stringFromDate:date];
    
    if(entry.imageData){
        self.imageView.image = [UIImage imageWithData:entry.imageData];
    }else{
        self.imageView.image = [UIImage imageNamed:@"Strawberry"];
    }
    
//    if(entry.mood == DiaryEntryMoodGood){
//        self.mood.image = [UIImage imageNamed:@"happy"];
//    }else if(entry.mood == DiaryEntryMoodBad){
//        self.mood.image = [UIImage imageNamed:@"sad"];
//    }else{
//        self.mood.image = [UIImage imageNamed:@"normal"];
//    }
    
//    self.image.layer.cornerRadius = CGRectGetWidth(self.image.frame)/2.0f;
//    
    if(entry.location.length > 0){
        self.location.text = entry.location;
    }else{
        self.location.text = @"No location";
    }
}

@end
