//
// Created by Edward Addley on 03/07/2016.
// Copyright (c) 2016 AddHop Ltd. All rights reserved.
//

#import "TTBooking.h"


@implementation TTBooking {

}

- (instancetype)initWithAddress:(NSString *)address dateTime:(NSDate *)dateTime {
    self = [super init];
    if (self) {
        self.address = address;
        self.dateTime = dateTime;
    }

    return self;
}

+ (instancetype)bookingWithAddress:(NSString *)address dateTime:(NSDate *)dateTime {
    return [[self alloc] initWithAddress:address dateTime:dateTime];
}

@end