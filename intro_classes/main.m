//
//  main.m
//  intro_classes
//
//  Created by John Barr on 2/5/13.
//  Copyright (c) 2013 John Barr. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "alien.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        alien *george, *sally;
        double timeToHome;
        double timeToPlace;
        double theSpeed;
        double theDistance;
        id theAliens[5];
        
        george = [[alien alloc] init];
        
        [george setPlanet:@"Mars"];
        george.numEyes = 8;
        george.distanceToHome = 10000; // light years
        george.speedSpaceShip = 10.4;  // hours/light year
        theSpeed = [george speedSpaceShip];
        theDistance = george.distanceToHome;
        NSLog(@"George's speed is %.2f and his distance to home is %.2f\n", theSpeed, theDistance);
        
        
        
        timeToHome = [george calcTimeToHome];
        
        NSLog(@"Here's how long it will take George to get home: %.2f hours", timeToHome);
        
        NSLog(@"Here's access to a auto-synthesized property: %f", george.speedSpaceShip);
        
        timeToPlace =[george timeToPlace: 22000];
        
        NSLog(@"Here's how long it will take George to get to a place: %.2f hours", timeToPlace);
        
        timeToPlace =[george timeWithSpeed: 1000.4 atDistance: 1230000.5];
        
        NSLog(@"Here's how long it will take George to get to a place: %.2f hours", timeToPlace);
        
        [george goToPlanet: @"Jupiter" withDistance: 200000000];
        
        // you can use new if there are no arguments to the constructor; this does both alloc and init
        sally = [alien new];
        
        // when you print an object, its description method is called to get a string
        NSLog(@"Here's the description: %@", sally);
        
        theAliens[0] = george;
        theAliens[1] = sally;
        
        NSLog(@"Here's george's description: %@", theAliens[0]);
        
        if ([george isKindOfClass:[alien class]])
            NSLog(@"george is an alien");
        else
            NSLog(@"george is NOT an alien (despite what you thing)");
        
        NSLog(@"george is of type %@", [alien class]);
                
        
    }
    return 0;
}

