//
// Created by Edward Addley on 03/07/2016.
// Copyright (c) 2016 AddHop Ltd. All rights reserved.
//

#import "MockBookingService.h"


@implementation MockBookingService {

}

- (instancetype)initWithSuccess:(BOOL)success {
    self = [super init];
    if (self) {
        self.success = success;
    }

    return self;
}

- (void)requestBookingWithAddresss:(NSString *)address
                          dateTime:(NSDate *)dateTime
                 completionHandler:(void (^)(bool success))completionHandler {
    completionHandler(self.success);
}

@end