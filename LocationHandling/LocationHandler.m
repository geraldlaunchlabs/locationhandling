//
//  LocationHandler.m
//  LocationHandling
//
//  Created by LLDM on 29/07/2016.
//  Copyright © 2016 LLDM. All rights reserved.
//

#import "LocationHandler.h"

static LocationHandler *DefaultManager = nil;
@interface LocationHandler()
 -(void)initiate;
@end

@implementation LocationHandler

+(id)getSharedInstance{
    if (!DefaultManager) {
        DefaultManager = [[self allocWithZone:NULL]init];
        [DefaultManager initiate];
    }
    return DefaultManager;
}

-(void)initiate{
    locationManager = [[CLLocationManager alloc]init];
    locationManager.delegate = (id)self;
}

-(void)startUpdating{
    [locationManager startUpdatingLocation];
}

-(void) stopUpdating{
    [locationManager stopUpdatingLocation];
}

-(void)locationManager:(CLLocationManager *)manager didUpdateToLocation:(CLLocation *)newLocation fromLocation:(CLLocation *)oldLocation {
    if ([self.delegate respondsToSelector:@selector (didUpdateToLocation:fromLocation:)]) {
        [self.delegate didUpdateToLocation:oldLocation fromLocation:newLocation];
    }
}

@end
