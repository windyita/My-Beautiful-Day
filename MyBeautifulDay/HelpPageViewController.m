//
//  HelpPageViewController.m
//  MyBeautifulDay
//
//  Created by Yan Yang on 3/15/15.
//  Copyright (c) 2015 Yan Yang. All rights reserved.
//

#import "HelpPageViewController.h"

@interface HelpPageViewController ()

@end

@implementation HelpPageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)rateWasPressed:(id)sender {
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Thank you!" message:@"Please give us 5 stars!" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [alert show];
    
}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
