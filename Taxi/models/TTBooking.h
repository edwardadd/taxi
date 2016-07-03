//
// Created by Edward Addley on 03/07/2016.
// Copyright (c) 2016 AddHop Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface TTBooking : NSObject
@property (copy) NSString* address;
@property (copy) NSDate* dateTime;

- (instancetype)initWithAddress:(NSString *)address dateTime:(NSDate *)dateTime;

+ (instancetype)bookingWithAddress:(NSString *)address dateTime:(NSDate *)dateTime;

@end