//
//  BookingUsecaseTest.m
//  Taxi
//
//  Created by Edward Addley on 03/07/2016.
//  Copyright (c) 2016 AddHop Ltd. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "TTBookingServiceProtocol.h"
#import "MockBookingService.h"
#import "TTUsecaseProtocol.h"
#import "TTBookTaxiUsecase.h"
#import "TTBooking.h"

@interface SuccessfulBooking : NSObject <TTBookingTaxiUseCaseDelegate>
@end

@implementation SuccessfulBooking
- (void)complete:(bool)success {
    XCTAssert(success);
}
@end

@interface BookingUsecaseTest : XCTestCase

@end

@implementation BookingUsecaseTest

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testInit {
    TTBooking* booking = [[TTBooking alloc] initWithAddress:@"37 Fall Spring Gardens, HX4 9PA"
                                                   dateTime:[NSDate date]];
    id<TTBookingServiceProtocol> service = [[MockBookingService alloc] init];
    id<TTBookingTaxiUseCaseDelegate> delegate = [[SuccessfulBooking alloc] init];
    id<TTUsecaseProtocol> usecase = [[TTBookTaxiUsecase alloc] initWithBooking:booking
                                                                    webservice:service
                                                                      delegate:delegate];
    [usecase execute];
}
@end
