    //
    //  MRFPlanetController.m
    //  PlanetsOBJC
    //
    //  Created by Michael Flowers on 10/31/19.
    //  Copyright © 2019 Michael Flowers. All rights reserved.
    //

#import "MRFPlanetController.h"
#import "MRFPlanet.h"
@implementation MRFPlanetController


    //initialize/set the arrays - hardcode it here
- (instancetype) init
{
    if (self = [super init])
    {
        _planetWP = @[
            [[MRFPlanet alloc]
             initWithName:@"Mercury"
             imageName:@"mercury"],
            [[MRFPlanet alloc]
             initWithName:@"Venus"
             imageName:@"venus"],
            [[MRFPlanet alloc]
             initWithName:@"Earth"
             imageName:@"earth"],
            [[MRFPlanet alloc]
             initWithName:@"Mars"
             imageName:@"mars"],
            [[MRFPlanet alloc]
             initWithName:@"Jupiter"
             imageName:@"jupiter"],
            [[MRFPlanet alloc]
             initWithName:@"Saturn"
             imageName:@"saturn"],
            [[MRFPlanet alloc]
             initWithName:@"Uranus"
             imageName:@"uranus"],
            [[MRFPlanet alloc]
             initWithName:@"Neptune"
             imageName:@"neptune"],
            [[MRFPlanet alloc]
             initWithName:@"Pluto"
             imageName:@"pluto"]
        ];
        
        _planetWOP = @[
            [[MRFPlanet alloc]
             initWithName:@"Mercury"
             imageName:@"mercury"],
            [[MRFPlanet alloc]
             initWithName:@"Venus"
             imageName:@"venus"],
            [[MRFPlanet alloc]
             initWithName:@"Earth"
             imageName:@"earth"],
            [[MRFPlanet alloc]
             initWithName:@"Mars"
             imageName:@"mars"],
            [[MRFPlanet alloc]
             initWithName:@"Jupiter"
             imageName:@"jupiter"],
            [[MRFPlanet alloc]
             initWithName:@"Saturn"
             imageName:@"saturn"],
            [[MRFPlanet alloc]
             initWithName:@"Uranus"
             imageName:@"uranus"],
            [[MRFPlanet alloc]
             initWithName:@"Neptune"
             imageName:@"neptune"],
        ];
    }
    return self;
}

//CREATE A COMPUTED ARRAY PROPERTY TO RETURN THE CORRECT ARRAY
- (NSArray *)planets
{
    //step 1 create an instance of userDefaults
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    
    //check userDefaults key, if there is a key then that means pluto is a planet
    if ([userDefaults boolForKey:@"ShouldShowPluto"])
    {
        return _planetWP;
    }
    
    //if boolean for the value at the key is false then do not show pluto
    return _planetWOP;
}




@end
