//
//  ViewController.m
//  Taxi
//
//  Created by Edward Addley on 03/07/2016.
//  Copyright (c) 2016 AddHop Ltd. All rights reserved.
//


#import "ViewController.h"


@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *bookButton;

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)bookTaxi:(id)sender {
    [self performSegueWithIdentifier:@"makeBooking" sender:sender];
}

@end