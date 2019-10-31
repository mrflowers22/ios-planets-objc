//
//  MRFCollectionViewController.m
//  PlanetsOBJC
//
//  Created by Michael Flowers on 10/31/19.
//  Copyright © 2019 Michael Flowers. All rights reserved.
//

#import "MRFCollectionViewController.h"
#import "MRFPlanetController.h"
#import "MRFPlanet.h"
#import "MRFPlanetCellCollectionViewCell.h"

@interface MRFCollectionViewController ()

@end

@implementation MRFCollectionViewController

static NSString * const reuseIdentifier = @"planetCell";

//initialize your planetController
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        _planetController = [[MRFPlanetController alloc] init];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.collectionView reloadData];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    [self.collectionView reloadData];
}

- (IBAction)settingsButtonTapped:(UIBarButtonItem *)sender {
}


#pragma mark <UICollectionViewDataSource>

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return _planetController.planets.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    //DECLARE YOUR CELL AS THE CELL
    MRFPlanetCellCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    MRFPlanet *planet = [[[self planetController] planets] objectAtIndex:[indexPath row]];
    cell.nameLabel.text = [planet name];
    cell.planetImageView.image = [UIImage imageNamed:planet.imageName];
    // Configure the cell
    
    return cell;
}

@end
