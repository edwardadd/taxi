//
//  BookingServiceTest.m
//  Taxi
//
//  Created by Edward Addley on 03/07/2016.
//  Copyright (c) 2016 AddHop Ltd. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "TTBookingServiceProtocol.h"
#import "MockBookingService.h"

@interface BookingServiceTest : XCTestCase

@end

@implementation BookingServiceTest

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testSuccessfulRequest {
    id<TTBookingServiceProtocol> service = [[MockBookingService alloc] initWithSuccess: true];
    [service requestBookingWithAddresss:@"37 Fall Spring Gardens, HX4 9PA"
                               dateTime:[NSDate date]
                      completionHandler:^(bool success) {
                          XCTAssert(success);
                      }];
}
@end
