//
//  StateCollectionViewController.m
//  StateFlagsC
//
//  Created by Yuliya  on 7/12/22.
//

#import "StateCollectionViewController.h"
#import "StateConroller.h"
#import "State.h"
#import "StateCollectionViewCell.h"

@interface StateCollectionViewController ()

@end

@implementation StateCollectionViewController

// static NSString * const reuseIdentifier = @"stateCell";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Register cell classes
#pragma mark   [self.collectionView registerClass:[StateCollectionViewCell class]
#pragma mark forCellWithReuseIdentifier:reuseIdentifier];
    
    // Do any additional setup after loading the view.
}

#pragma mark <UICollectionViewDataSource>

 - (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
   return 2;
 }


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return StateConroller.shared.states.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    StateCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"stateCell" forIndexPath:indexPath];
    
    // Configure the cell
    State *state = StateConroller.shared.states[indexPath.row];
    cell.state = state;
    
    return cell;
}

@end
