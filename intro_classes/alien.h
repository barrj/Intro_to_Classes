/**************************************************
 * alien.h
 *  intro_classes
 *
 *  Created by John Barr on 2/5/13.
 *  Copyright (c) 2013 John Barr. All rights reserved.
****************************************************/

#import <Foundation/Foundation.h>

@interface alien : NSObject {
    int numEyes;
    NSString *planet;
    double distanceToHome;
    double speedSpaceShip;
}

/*********************** properties ***********************************/

/*  properties are a technique in Xcode (not objective C)
 * to automatically create accessors and mutatories for
 * instance variables
 *
 *  NOTE:  there are NO access classes in objective C.  No priviate, no
 *         protected no public
 *         By default, everything is "public"
 */

@property (nonatomic, assign) int numEyes;
@property (nonatomic, retain) NSString *planet;
@property (nonatomic, assign) double distanceToHome;
@property (nonatomic, assign) double speedSpaceShip;

/********************** methods ****************************************/

// init does not have to be in the interface; all other constructors do
-(id) init;

// this demonstrates how methods with multiple parameters are declared
//  the message is initwithNum:andCost:andName:
//  the parameters are n, c, and s
// To call this (where x is an instance of this class:
//  [x initwithNum: 5 and Cost: 3.45 and Name: "@"John"];
// In reality, this would be used with alloc to create and initialize an
// instance of the myBag class.  See testObjC.m file
- (id) initWithNum: (int) a andDistance: (double) b andPlanet: (NSString *) c;

// method preceded by a "-" is an instance method
// method preceded by a "+" is a class method
- (double) calcTimeToHome;

- (double) timeToPlace: (double) dist;

- (double) timeWithSpeed: (double) theSpeed atDistance: (double) theDist;

- (void) goToPlanet: (NSString *) thePlanet withDistance: (double) theDist;

// note that any method not put here but put in the implementation file
// becomes a PRIVATE method.


@end
