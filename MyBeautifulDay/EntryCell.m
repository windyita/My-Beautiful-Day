//
//  EntryCell.m
//  MyBeautifulDay
//
//  Created by Yan Yang on 3/14/15.
//  Copyright (c) 2015 Yan Yang. All rights reserved.
//

#import "EntryCell.h"
#import "DiaryEntry.h"
#import <QuartzCore/QuartzCore.h>

@implementation EntryCell

+ (CGFloat)heightForEntry:(DiaryEntry *)entry{
    const CGFloat topMargin = 35.0f;
    const CGFloat bottomMargin = 60.0f;
    const CGFloat minHeight = 85.0f;
    
    UIFont *font = [UIFont systemFontOfSize:[UIFont systemFontSize]];
    CGRect boundingBox = [entry.body boundingRectWithSize:CGSizeMake(180, CGFLOAT_MAX) options:(NSStringDrawingUsesFontLeading|NSStringDrawingUsesLineFragmentOrigin) attributes:@{NSFontAttributeName: font} context:nil];
    
    return MAX(minHeight, CGRectGetHeight(boundingBox) + topMargin +bottomMargin);
}

- (void)configureCellForEntry:(DiaryEntry *)entry{
    self.body.text = entry.body;
    self.location.text = entry.location;
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc]init];
    [dateFormatter setDateFormat:@"EEEE, MMMM d yyyy"];
    NSDate *date = [NSDate dateWithTimeIntervalSince1970:entry.date];
    self.date.text = [dateFormatter stringFromDate:date];
    
    if(entry.imageData){
        self.image.image = [UIImage imageWithData:entry.imageData];
    }else{
        self.image.image = [UIImage imageNamed:@"Strawberry"];
    }
    
    if(entry.mood == DiaryEntryMoodGood){
        self.mood.image = [UIImage imageNamed:@"happy"];
    }else if(entry.mood == DiaryEntryMoodBad){
        self.mood.image = [UIImage imageNamed:@"sad"];
    }else{
        self.mood.image = [UIImage imageNamed:@"normal"];
    }
    
    self.image.layer.cornerRadius = CGRectGetWidth(self.image.frame)/2.0f;
    
    if(entry.location.length > 0){
        self.location.text = entry.location;
    }else{
        self.location.text = @"No location";
    }
}

@end
