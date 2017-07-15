//
//  MapiViewController.m
//  AppiOS1.1
//
//  Created by Aridon on 7/15/17.
//  Copyright © 2017 Aridon. All rights reserved.
//

#import "MapiViewController.h"
#import "MapPin.h"

@interface MapiViewController ()

@end

@implementation MapiViewController

@synthesize mapview;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    MKCoordinateRegion region={{0.0,0.0},{0.0,0.0}};
    region.center.latitude=42.2279;
    region.center.longitude=21.2569;
    region.span.longitudeDelta=0.01f;
    region.span.latitudeDelta=0.01f;
    [mapview setRegion:region animated:YES];
    
    MapPin *ann=[[MapPin alloc]init];
    ann.title=@"Kacanik";
    ann.subtitle=@"Kosove";
    ann.coordinate=region.center;
    [mapview addAnnotation:ann];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

-(IBAction)SetMap:(id)sender {
    
    switch (((UISegmentedControl *) sender).selectedSegmentIndex) {
        case 0:
            mapview.mapType=MKMapTypeStandard;
            break;
        case 1:
            mapview.mapType=MKMapTypeSatellite;
            break;
        case 2:
            mapview.mapType=MKMapTypeHybrid;
            break;
        default:
            break;
    }
    
}

-(IBAction)GetLocation:(id)sender
{
    mapview.showsUserLocation=YES;
}

-(IBAction)Direction:(id)sender
{
    NSString *urlString=@"http://maps.apple.com/maps?daddr=42.2279,21.2569";
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:urlString]];
}
@end








