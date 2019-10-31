//
//  MRFSettingsViewController.m
//  PlanetsOBJC
//
//  Created by Michael Flowers on 10/31/19.
//  Copyright © 2019 Michael Flowers. All rights reserved.
//

#import "MRFSettingsViewController.h"

@interface MRFSettingsViewController ()

@end

@implementation MRFSettingsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self updateViews];
}

- (IBAction)doneButtonTapped:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)switchValueChanged:(UISwitch *)sender {
    
    //if this is on then we should save to userDefaults
    //create an instance of userdefaults and set its boolean property to match the switch
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    [userDefaults setBool:sender.on forKey:@"ShouldShowPluto"];
    
}

//updateviews
- (void)updateViews
{
    [self.switchValue setOn: [[NSUserDefaults standardUserDefaults] boolForKey:@"ShouldShowPluto"]];
    
}



@end
