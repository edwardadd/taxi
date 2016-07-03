//
// Created by Edward Addley on 03/07/2016.
// Copyright (c) 2016 AddHop Ltd. All rights reserved.
//

#import "TTBookingViewController.h"
#import "TTBooking.h"
#import "TTBookTaxiUsecase.h"
#import "TTWebService.h"

@interface TTBookingViewController ()
@property (weak, nonatomic) IBOutlet UITextField *addressField;
@property (weak, nonatomic) IBOutlet UIDatePicker *datePicker;
@end

@implementation TTBookingViewController {
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)back:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)book:(id)sender {
    // TODO Validate on address
    TTBooking* booking = [TTBooking bookingWithAddress:_addressField.text dateTime:_datePicker.date];
    id<TTBookingServiceProtocol> service = [[TTWebService alloc] init];
    TTBookTaxiUsecase * usecase = [[TTBookTaxiUsecase alloc] initWithBooking:booking
                                                                  webservice:service
                                                                    delegate:self];
    [usecase execute];
}

- (void)complete:(bool)success {
    // TODO Display success or failure message
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end