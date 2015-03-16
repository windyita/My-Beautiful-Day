//
//  PhotosViewController.m
//  MyBeautifulDay
//
//  Created by Yan Yang on 3/15/15.
//  Copyright (c) 2015 Yan Yang. All rights reserved.
//

#import "PhotosViewController.h"
#import "PhotoCell.h"
#import "CoreDataStack.h"
#import "DiaryEntry.h"
#import "EntryViewController.h"

@interface PhotosViewController () <NSFetchedResultsControllerDelegate>
@property (nonatomic) NSArray *photos;
@property (nonatomic, strong) NSFetchedResultsController *fetchedResultsController;
@end

@implementation PhotosViewController

-(void)viewDidLoad{

    [super viewDidLoad];
    [self.collectionView registerClass:[PhotoCell class] forCellWithReuseIdentifier:@"photo"];
    self.collectionView.backgroundColor = [UIColor whiteColor];
    [self.fetchedResultsController performFetch:nil];
    
}

- (NSFetchedResultsController *)fetchedResultsController {
    if(_fetchedResultsController != nil){
        return _fetchedResultsController;
    }
    CoreDataStack *coreDataStack = [CoreDataStack defaultStack];
    NSFetchRequest *fetchRequest = [self entryListFetchRequest];
    _fetchedResultsController = [[NSFetchedResultsController alloc]initWithFetchRequest:fetchRequest managedObjectContext:coreDataStack.managedObjectContext sectionNameKeyPath:@"sectionName" cacheName:nil];
    _fetchedResultsController.delegate = self;
    return _fetchedResultsController;
}

- (NSFetchRequest *)entryListFetchRequest {
    NSFetchRequest *fetchRequest = [NSFetchRequest fetchRequestWithEntityName:@"DiaryEntry"];
    fetchRequest.sortDescriptors = @[[NSSortDescriptor sortDescriptorWithKey:@"date" ascending:NO]];
    
    return fetchRequest;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    //return self.fetchedResultsController.sections.count;
    return 12;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    PhotoCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"photo" forIndexPath:indexPath];
    //DiaryEntry *entry = [self.fetchedResultsController objectAtIndexPath:indexPath];
    
    cell.backgroundColor = [UIColor colorWithRed:254.0/255.0 green:164.0/255.0 blue:191.0/255.0 alpha:0.5f];
    //cell.photo = self.photos[indexPath.row];
    return cell;
}

@end
