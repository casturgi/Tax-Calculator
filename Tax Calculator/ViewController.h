//
//  ViewController.h
//  Tax Calculator
//
//  Created by cory Sturgis on 8/18/15.
//  Copyright (c) 2015 CorySturgis. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *textInput;
@property (weak, nonatomic) IBOutlet UILabel *taxTotal;
@property (weak, nonatomic) IBOutlet UILabel *priceTotal;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;

@property double caTax;
@property double chiTax;
@property double nyTax;
    


@end

