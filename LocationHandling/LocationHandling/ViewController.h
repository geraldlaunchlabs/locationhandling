//
//  ViewController.h
//  LocationHandling
//
//  Created by LLDM on 29/07/2016.
//  Copyright © 2016 LLDM. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LocationHandler.h"

@interface ViewController : UIViewController<LocationHandlerDelegate> {
    IBOutlet UILabel *latitudeLabel;
    IBOutlet UILabel *longitudeLabel;
}

@end

