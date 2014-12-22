//
//  CityInterfaceController.m
//  WatchKitSample
//
//  Created by Juanjo Corbalán on 28/11/14.
//  Copyright (c) 2014 Juanjo Corbalan Cerezuela. All rights reserved.
//

#import "CityInterfaceController.h"

@implementation CityInterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
    NSString *city = context;
    
    [self.titleLabel setText:city];
    
    CLGeocoder *geocoder = [[CLGeocoder alloc] init];
    [geocoder geocodeAddressString:[NSString stringWithFormat:@"%@, Spain", city]
                 completionHandler:^(NSArray* placemarks, NSError* error) {
                     if (placemarks && placemarks.count > 0) {
                         MKPlacemark *placemark = [[MKPlacemark alloc] initWithPlacemark:[placemarks objectAtIndex:0]];
                         MKCoordinateRegion region = MKCoordinateRegionMake(placemark.coordinate, MKCoordinateSpanMake(2.5, 2.5));
                         [self.cityMap setRegion:region];
                         [self.cityMap addAnnotation:placemark.coordinate withPinColor:WKInterfaceMapPinColorRed];
                     }
                 }
     ];
}

@end
