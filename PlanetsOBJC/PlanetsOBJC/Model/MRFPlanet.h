//
//  MRFPlanet.h
//  PlanetsOBJC
//
//  Created by Michael Flowers on 10/31/19.
//  Copyright © 2019 Michael Flowers. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MRFPlanet : NSObject

//create the properties in the .h files
@property (readonly)NSString *name;
@property (readonly) NSString *iamgeName;

//here we declare the init functionality
// - = instance method. +  = static or type method
- (instancetype)initWithName:(NSString *)name imageName:(NSString *)imageName;

@end

NS_ASSUME_NONNULL_END
