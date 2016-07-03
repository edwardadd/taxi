//
// Created by Edward Addley on 03/07/2016.
// Copyright (c) 2016 AddHop Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TTUsecaseProtocol.h"

@class TTBooking;

@protocol TTBookingServiceProtocol;

@protocol TTBookingTaxiUseCaseDelegate
- (void) complete: (bool) success;
@end

@interface TTBookTaxiUsecase : NSObject<TTUsecaseProtocol>
@property (readonly) TTBooking* booking;
@property(nonatomic, readonly) id <TTBookingServiceProtocol> webService;

@property (weak) id<TTBookingTaxiUseCaseDelegate> delegate;

- (instancetype)initWithBooking:(TTBooking *)booking webservice:(id <TTBookingServiceProtocol>)service delegate:(id<TTBookingTaxiUseCaseDelegate>)delegate;
@end