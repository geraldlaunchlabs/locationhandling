//
//  LocationHandler.h
//  LocationHandling
//
//  Created by LLDM on 29/07/2016.
//  Copyright © 2016 LLDM. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>


@protocol LocationHandlerDelegate <NSObject>

@required
-(void) didUpdateToLocation:(CLLocation*)newLocation fromLocation:(CLLocation*)oldLocation;
@end

@interface LocationHandler : NSObject {
    CLLocationManager *locationManager;
}

@property(nonatomic,strong) id<LocationHandlerDelegate> delegate;

+(id)getSharedInstance;
-(void)startUpdating;
-(void) stopUpdating;

@end
