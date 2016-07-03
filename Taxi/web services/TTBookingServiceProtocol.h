//
// Created by Edward Addley on 03/07/2016.
// Copyright (c) 2016 AddHop Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol TTBookingServiceProtocol <NSObject>

- (void) requestBookingWithAddresss: (NSString *) address
                           dateTime: (NSDate *) dateTime
                  completionHandler: (void (^)(bool success)) completionHandler;

@end