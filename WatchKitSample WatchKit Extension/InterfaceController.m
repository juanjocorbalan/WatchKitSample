//
//  InterfaceController.m
//  WatchKitSample WatchKit Extension
//
//  Created by Juanjo Corbalán on 27/11/14.
//  Copyright (c) 2014 Juanjo Corbalan Cerezuela. All rights reserved.
//

#import "InterfaceController.h"
#import "CityRow.h"

@interface InterfaceController()

@property (strong, nonatomic) NSArray *cities;

@end

@implementation InterfaceController

- (instancetype)initWithContext:(id)context {
    if(self = [super initWithContext:context]) {
        self.cities = @[@"Almería", @"Cádiz", @"Córdoba", @"Granada",  @"Huelva", @"Jaén",  @"Málaga", @"Sevilla"];
        [self.citiesTable setNumberOfRows:[self.cities count] withRowType:@"CityRow"];

        for (NSInteger i=0; i<[self.cities count]; i++) {
            CityRow *cityRow = [self.citiesTable rowControllerAtIndex:i];
            [cityRow.cityLabel setText:self.cities[i]];
        }
    }
    return self;
}

- (void)table:(WKInterfaceTable *)table didSelectRowAtIndex:(NSInteger)rowIndex {
    [self pushControllerWithName:@"CityInterfaceController" context:self.cities[rowIndex]];
}


@end



