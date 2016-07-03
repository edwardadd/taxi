//
// Created by Edward Addley on 03/07/2016.
// Copyright (c) 2016 AddHop Ltd. All rights reserved.
//

#import "TTBookTaxiUsecase.h"
#import "TTBookingServiceProtocol.h"
#import "TTBooking.h"

/*
 *  Use Case
 *  Make a new booking
 *  As a customer, I want to make a booking by typing the pickup address and selecting a date & time.
 */
@implementation TTBookTaxiUsecase {

}

- (instancetype)initWithBooking:(TTBooking *)booking webservice:(id <TTBookingServiceProtocol>)service delegate:(id<TTBookingTaxiUseCaseDelegate>)delegate {
    self = [super init];

    if (self) {
        _booking = booking;
        _webService = service;
    }

    return self;
}

- (void)execute {
    [self.webService requestBookingWithAddresss:self.booking.address
                                       dateTime:self.booking.dateTime
                              completionHandler:^(bool success) {
                                  [self.delegate complete: success];
                              }];
}

@end