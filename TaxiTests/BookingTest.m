//
//  BookingTest.m
//  Taxi
//
//  Created by Edward Addley on 03/07/2016.
//  Copyright (c) 2016 AddHop Ltd. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "TTBooking.h"

@interface BookingTest : XCTestCase

@end

@implementation BookingTest

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testInitBooking {
    TTBooking* booking = [[TTBooking alloc] init];
    XCTAssert(booking != nil);
}

- (void)testInitBookingWithData {
    NSDate *dateTime = [NSDate date];
    NSString *address = @"37 Fall Spring Gardens, HX4 9PA";

    TTBooking* booking = [[TTBooking alloc] initWithAddress:address dateTime:dateTime];
    XCTAssert(booking != nil);

    XCTAssert([booking.address isEqualToString:address]);
    XCTAssert([booking.dateTime isEqualToDate:dateTime]);
}
@end
