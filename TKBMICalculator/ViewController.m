//
//  ViewController.m
//  TKBMICalculator
//
//  Created by Felix ITs 04 on 28/10/16.
//  Copyright © 2016 Tushar. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    
    float h,w,hmcf,wmcf,sqwmcf,BMI;
    
    
    
    
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    [_bmiSlider setMaximumTrackImage:[UIImage imageNamed:@"bmi img.png"] forState:UIControlStateNormal];
//    [_bmiSlider setMinimumTrackImage:[UIImage imageNamed:@"bmi img.png"] forState:UIControlStateNormal];
    [_bmiSlider setMinimumTrackImage:[UIImage new] forState:UIControlStateNormal];
    [_bmiSlider setMaximumTrackImage:[UIImage new] forState:UIControlStateNormal];
//    [_bmiSlider setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"bmi img.png"]]];

//    [_bmiSlider setMaximumTrackTintColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"bmi img.png"]]];
    
    [_bmiSlider setThumbImage:[UIImage imageNamed:@"thumb.png"] forState:UIControlStateNormal];
    
    [_bmiSlider setUserInteractionEnabled:NO];
    
    [_bmiSlider setMinimumValue:0];
    
    [_bmiSlider setMaximumValue:43];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)calculateBMIButton:(id)sender {

    NSString *height=_hightTextField.text;
    h=[height floatValue];
    NSLog(@"%.2f",h);
    
    NSString *weight=_weightTextField.text;
    w=[weight floatValue];
    NSLog(@"%.2f",w);
    
    hmcf=h*0.025;
    NSLog(@"hmcf:%f",hmcf);
    
    
    wmcf=w*0.45;
    NSLog(@"wmcf:%f",wmcf);

    
    sqwmcf=hmcf*hmcf;
    NSLog(@"sqwmcf:%f",sqwmcf);
    
    BMI=wmcf/sqwmcf;
    
    NSString *bmiString=[NSString stringWithFormat:@"%.2f",BMI];
    
    _bmiLabel.text=bmiString;
    
    float bmiFloat = _bmiLabel.text.floatValue;
    
    [UIView animateWithDuration:0.5 delay:0.1 options:UIViewAnimationOptionCurveEaseIn animations:^{
        [_bmiSlider setValue:bmiFloat animated:YES];

    } completion:^(BOOL finished) {
        
    }];
    if (bmiString.intValue<=18.4) {
        _bmiResultLabel.text=@"Ohh You need to increase your Weight";
    }
    else if (bmiString.intValue>=18.4 &&   bmiString.intValue<=24.9) {
        _bmiResultLabel.text=@"Congrats its Normal!!";
    }
    else if (bmiString.intValue>=25 &&   bmiString.intValue<=29.9) {
        _bmiResultLabel.text=@"Ohh You are Overweight!!";
    }

    else if (bmiString.intValue>=30 &&   bmiString.intValue<=39.9) {
        _bmiResultLabel.text=@"Ohh You are Obese!!";
    }
    else if ( bmiString.intValue>=39.9) {
        _bmiResultLabel.text=@"Ohh you are over Obese!!";
    }

}
@end
