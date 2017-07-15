//
//  MapiViewController.h
//  AppiOS1.1
//
//  Created by Aridon on 7/15/17.
//  Copyright © 2017 Aridon. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface MapiViewController : UIViewController
{
    MKMapView *mapview;
}
@property(nonatomic,retain) IBOutlet MKMapView *mapview;

-(IBAction)SetMap:(id)sender;

-(IBAction)GetLocation:(id)sender;

-(IBAction)Direction:(id)sender;


@end
