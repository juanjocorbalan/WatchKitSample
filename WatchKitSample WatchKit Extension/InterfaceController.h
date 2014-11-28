//
//  InterfaceController.h
//  WatchKitSample WatchKit Extension
//
//  Created by Juanjo Corbalán on 27/11/14.
//  Copyright (c) 2014 Juanjo Corbalan Cerezuela. All rights reserved.
//

#import <WatchKit/WatchKit.h>
#import <Foundation/Foundation.h>

@interface InterfaceController : WKInterfaceController

@property (weak, nonatomic) IBOutlet WKInterfaceTable *citiesTable;

@end
