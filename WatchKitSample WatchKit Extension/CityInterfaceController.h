//
//  CityInterfaceController.h
//  WatchKitSample
//
//  Created by Juanjo Corbalán on 28/11/14.
//  Copyright (c) 2014 Juanjo Corbalan Cerezuela. All rights reserved.
//

#import <WatchKit/WatchKit.h>

@interface CityInterfaceController : WKInterfaceController

@property (weak, nonatomic) IBOutlet WKInterfaceLabel *titleLabel;
@property (weak, nonatomic) IBOutlet WKInterfaceMap *cityMap;

@end
