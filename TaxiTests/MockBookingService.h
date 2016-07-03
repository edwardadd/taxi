//
// Created by Edward Addley on 03/07/2016.
// Copyright (c) 2016 AddHop Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TTBookingServiceProtocol.h"


@interface MockBookingService : NSObject<TTBookingServiceProtocol>
@property (assign) BOOL success;

- (instancetype)initWithSuccess:(BOOL)success;

@end