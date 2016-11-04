//
//  ViewController.h
//  TKBMICalculator
//
//  Created by Felix ITs 04 on 28/10/16.
//  Copyright © 2016 Tushar. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *hightTextField;
@property (weak, nonatomic) IBOutlet UITextField *weightTextField;
- (IBAction)calculateBMIButton:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *bmiResultLabel;

@property (weak, nonatomic) IBOutlet UILabel *bmiLabel;
@property (weak, nonatomic) IBOutlet UISlider *bmiSlider;

@end

