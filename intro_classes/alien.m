//
//  alien.m
//  intro_classes
//
//  Created by John Barr on 2/5/13.
//  Copyright (c) 2013 John Barr. All rights reserved.
//

#import "alien.h"

@implementation alien

@synthesize numEyes, planet, distanceToHome;

#pragma mark -
#pragma mark initializors

- (id) init
{
    if (self = [super init])
	{
        numEyes = 4;
        // all nondescript aliens are from Neptune
		planet = @"Neptune";
        // It's a long way to Neptune
        distanceToHome = 1000000;
        speedSpaceShip = 1000;
		return (self);
	}
	return nil;
}

- (id) initWithNum: (int) a andDistance: (double) b andPlanet: (NSString *) c
{
    if (self = [super init])
	{
        numEyes = 4;
		planet = c;
        distanceToHome = b;
        speedSpaceShip = a;
		return (self);
	}
	return nil;
    
}

#pragma mark -
#pragma mark instance methods

// method preceded by a "-" is an instance method
// method preceded by a "+" is a class method
- (double) calcTimeToHome
{
    double theTime;
    
    theTime = distanceToHome / speedSpaceShip;
    return theTime;
}

- (double) timeToPlace: (double) dist;
{
    double theTime = dist / speedSpaceShip;
    return theTime;
}

- (double) timeWithSpeed: (double) theSpeed atDistance: (double) theDist;
{
    double theTime = theDist / theSpeed;
    return theTime;
}

- (void) goToPlanet: (NSString *) thePlanet withDistance: (double) theDist
{
    double theTime;
    
    theTime = theDist / speedSpaceShip;
    
    NSLog(@"Time to planet %@ from %@ is %.2f", thePlanet, planet, theTime);
}

// This method is not in the .h file.  It is called when you print an instance of this class
// The method is used to allow a class to print out a string describing itself.
- (NSString *) description
{
    NSString *aboutMe;
    
    aboutMe = [NSString stringWithFormat:@"I am an alien that lives on %@ with %d eyes!", planet, numEyes ];
	return aboutMe;
}  // description

@end
