//
//  MRFSettingsViewController.h
//  PlanetsOBJC
//
//  Created by Michael Flowers on 10/31/19.
//  Copyright © 2019 Michael Flowers. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MRFSettingsViewController : UIViewController

- (IBAction)doneButtonTapped:(UIButton *)sender;
- (IBAction)switchValueChanged:(UISwitch *)sender;

@property (weak, nonatomic) IBOutlet UISwitch *switchValue;


@end

NS_ASSUME_NONNULL_END
