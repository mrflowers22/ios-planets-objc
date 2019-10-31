//
//  MRFCollectionViewController.h
//  PlanetsOBJC
//
//  Created by Michael Flowers on 10/31/19.
//  Copyright © 2019 Michael Flowers. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@class MRFPlanetController; //this is like a lazy var
@interface MRFCollectionViewController : UICollectionViewController


- (IBAction)settingsButtonTapped:(UIBarButtonItem *)sender;
@property MRFPlanetController *planetController; //make sure you remember to implement  @class



@end

NS_ASSUME_NONNULL_END
