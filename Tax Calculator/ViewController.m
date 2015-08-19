//
//  ViewController.m
//  Tax Calculator
//
//  Created by cory Sturgis on 8/18/15.
//  Copyright (c) 2015 CorySturgis. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize textInput;
@synthesize taxTotal;
@synthesize priceTotal;
@synthesize segmentedControl;

@synthesize caTax;
@synthesize chiTax;
@synthesize nyTax;


- (void)viewDidLoad {
    [super viewDidLoad];



    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"woodenWallpaper.jpg"]];

    caTax = .075;
    chiTax = .095;
    nyTax = .045;


    
}

- (IBAction)onCalculateButtonTapped:(id)sender {

    NSString *inputNumber = self.textInput.text ;
    int inputInt = [inputNumber intValue];

    if (self.segmentedControl.selectedSegmentIndex == 0){
        double taxAmmount = inputInt * self.caTax;
        self.taxTotal.text = [NSString stringWithFormat:@"%.2f", taxAmmount];
        double totalAmmount = inputInt + taxAmmount;
        self.priceTotal.text = [NSString stringWithFormat:@"%.2f", totalAmmount];
    } else if (self.segmentedControl.selectedSegmentIndex == 1) {
        double taxAmmount = inputInt * self.chiTax;
        self.taxTotal.text = [NSString stringWithFormat:@"%.2f", taxAmmount];
        double totalAmmount = inputInt + taxAmmount;
        self.priceTotal.text = [NSString stringWithFormat:@"%.2f", totalAmmount];
    } else {
        double taxAmmount = inputInt * self.nyTax;
        self.taxTotal.text = [NSString stringWithFormat:@"%.2f", taxAmmount];
        double totalAmmount = inputInt + taxAmmount;
        self.priceTotal.text = [NSString stringWithFormat:@"%.2f", totalAmmount];
    }


}


@end
