//
//  MRFPlanetController.h
//  PlanetsOBJC
//
//  Created by Michael Flowers on 10/31/19.
//  Copyright © 2019 Michael Flowers. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MRFPlanetController : NSObject

//again, we want to declare the properties or functions we want to implement in  the .m file
//we need two arrays, one with pluto and one without
@property NSArray *planetWP;
@property NSArray *planetWOP;

//we are going to hard code this array
@property (readonly) NSArray *planets;


@end

NS_ASSUME_NONNULL_END
