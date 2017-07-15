//
//  MapPin.h
//  AppiOS1.1
//
//  Created by Aridon on 7/15/17.
//  Copyright © 2017 Aridon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface MapPin : NSObject <MKAnnotation>
{
    CLLocationCoordinate2D coordinate;
    NSString *title;
    NSString *subtitle;
}
@property (nonatomic,assign) CLLocationCoordinate2D coordinate;
@property(nonatomic,copy)  NSString *title;
@property(nonatomic,copy)  NSString *subtitle;
@end
