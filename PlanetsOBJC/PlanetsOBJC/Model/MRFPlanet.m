//
//  MRFPlanet.m
//  PlanetsOBJC
//
//  Created by Michael Flowers on 10/31/19.
//  Copyright © 2019 Michael Flowers. All rights reserved.
//

#import "MRFPlanet.h"

@implementation MRFPlanet

//this is where you implement your functions you declared in the .h file
- (instancetype)initWithName:(NSString *)name imageName:(NSString *)imageName
{
    if (self  = [super init])
    {
        //initialize our properties = self.name = name
        _name  = name;
        _imageName = imageName;
    }
    return self;
}

@end
