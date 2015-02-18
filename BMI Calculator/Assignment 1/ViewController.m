//
//  ViewController.m
//  Assignment 1
//
//  Created by Rhapsody P. Budiono on 2/16/15.
//  Copyright (c) 2015 Rhapsody P. Budiono. All rights reserved.
//
//Rhapsody Budiono
//CWID : 893925362
// This file holds all the actions that happen when the user prompts something.

#import "ViewController.h"
#import "Model.h"


@interface ViewController ()
{
    NSString * _rangeString;
     BOOL _isUSMeasures;
    int height1;
    int weight1;
    double BMI;
}


@property (retain,nonatomic) Model * calc;
@property (assign) BOOL isUSMeasures;
@property (assign) int heightAmount;
@property (assign) int weightAmount;
@property (assign) double bmi;
@property (retain, nonatomic) NSString *String;

@end

@implementation ViewController

@synthesize heightAmount = height1;
@synthesize weightAmount = weight1;
@synthesize bmi = BMI;
@synthesize HeightText = heightText;
@synthesize WeightText = WeightText;
@synthesize US = _US;
@synthesize Image = image;
@synthesize isUSMeasures = _isUSMeasures;
@synthesize Result = result;
@synthesize Number = number;
@synthesize String = string;



- (Model *) calc {
    if (!_calc)
        _calc = [[Model
                 alloc] init];
    return _calc;
}



- (void)viewDidLoad {
    [super viewDidLoad];
    self.isUSMeasures = YES;
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//What action to do when the user press go
- (IBAction)Calculate:(UIButton *)sender {
    

        height1 = [heightText.text intValue];
        weight1 = [WeightText.text intValue];
       
        if (_isUSMeasures)
            BMI = [self.calc calculate:height1 andlbs:weight1];
        else
            BMI = [self.calc calculateNonUS:height1 andkg:weight1];
 
        self.Number.text = [NSString stringWithFormat:@"%.2f",BMI];
       // Print out the result
        if (BMI< 16.00) {
            self.Result.text = @"Severe Thinness";
            [self.Image setImage:[UIImage imageNamed:@"0.png"]];
        }
        else if (BMI < 16.99) {
            self.Result.text = @"Moderate Thinness";
        [self.Image setImage:[UIImage imageNamed:@"1.png"]];
        }
        else if (BMI < 18.49) {
            self.Result.text = @"Mild Thinness";
        [self.Image setImage:[UIImage imageNamed:@"2.png"]];
        }
        else if (BMI < 24.99) {
            self.Result.text = @"Normal Range";
        [self.Image setImage:[UIImage imageNamed:@"3.png"]];
        }
        else if (BMI < 29.99) {
            self.Result.text = @"Overweight";
        [self.Image setImage:[UIImage imageNamed:@"4.png"]];
        }
        else if (BMI < 34.99) {
            self.Result.text = @"Obese Class I (Moderate)";
        [self.Image setImage:[UIImage imageNamed:@"5.png"]];
        }
        else if (BMI < 39.99) {
            self.Result.text = @"Obese Class II (Severe)";
        [self.Image setImage:[UIImage imageNamed:@"6.png"]];
        }
        else {
            self.Result.text = @"Obese Class III (Very Severe)";
        [self.Image setImage:[UIImage imageNamed:@"7.png"]];
        }
       
    
}

- (IBAction)US:(id)sender {
    self.isUSMeasures = !_isUSMeasures;
    [self.NonUS setOn:!_isUSMeasures animated:YES];
    self.HeightText.text = @"";
    self.WeightText.text = @"";
    // Clean the textFields for next calculate.
    self.bmiLabel.text = @"";
    self.Result.text = @"Hello!";
    [self.Image setImage:[UIImage imageNamed:@""]];
    if(_isUSMeasures) {
        self.Height.text = @"in";
        self.Weight.text = @"lbs";
    }
    else {
        self.Height.text = @"cm";
        self.Weight.text = @"kg";
    }

}




@end
