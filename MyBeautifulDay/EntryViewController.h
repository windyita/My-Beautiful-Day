//
//  NewEntryViewController.h
//  MyBeautifulDay
//
//  Created by Yan Yang on 3/13/15.
//  Copyright (c) 2015 Yan Yang. All rights reserved.
//
//  Define the diary entry editiing pge
//

#import <UIKit/UIKit.h>


@class DiaryEntry;


@interface EntryViewController : UIViewController

@property (nonatomic, strong) DiaryEntry *entry;
@property (weak, nonatomic) IBOutlet UIButton *goodButton;
@property (weak, nonatomic) IBOutlet UIButton *averageButton;
@property (weak, nonatomic) IBOutlet UIButton *badButton;
@property (strong, nonatomic) IBOutlet UIView *accessoryView;
@property (weak, nonatomic) IBOutlet UILabel *dateLabel;
@property (weak, nonatomic) IBOutlet UITextView *textView;
@property (weak, nonatomic) IBOutlet UIButton *imageButton;



@end
