//
//  DiaryEntry.h
//  MyBeautifulDay
//
//  Created by Yan Yang on 3/13/15.
//  Copyright (c) 2015 Yan Yang. All rights reserved.
//
//  Define the diary entry

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

NS_ENUM(int16_t, DiaryEntryMood){
    DiaryEntryMoodGood = 0,
    DiaryEntryMoodAverage = 1,
    DiaryEntryMoodBad = 2
    
};

@interface DiaryEntry : NSManagedObject

@property (nonatomic) NSTimeInterval date;
@property (nonatomic, retain) NSString * body;
@property (nonatomic, retain) NSData * imageData;
@property (nonatomic) int16_t mood;
@property (nonatomic, retain) NSString * location;

@property (nonatomic,readonly) NSString *sectionName;

@end
