//
//  ViewController.h
//  Assignment 1
//
//  Created by Rhapsody P. Budiono on 2/16/15.
//  Copyright (c) 2015 Rhapsody P. Budiono. All rights reserved.
//
//Rhapsody Budiono
//CWID : 893925362
// This file holds the value of the main.storyboard. Everything button, labels, and text fields are declared here.

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    IBOutlet UITextField *heightText;
    IBOutlet UITextField *weightText;
    IBOutlet UILabel *label1;
    IBOutlet UILabel *height;
    IBOutlet UILabel *weight;
    IBOutlet UILabel *bmi;
    IBOutlet UILabel *result;
    IBOutlet UIImageView *img;
    IBOutlet UISwitch *_US;
    IBOutlet UISwitch *_NonUS;
    IBOutlet UILabel *number;

}

@property (strong, nonatomic) IBOutlet UILabel *Height;

@property (strong, nonatomic) IBOutlet UILabel *Weight;
@property (strong, nonatomic) IBOutlet UILabel *bmiLabel;
@property (strong, nonatomic) IBOutlet UITextField *HeightText;
@property (strong, nonatomic) IBOutlet UITextField *WeightText;
@property (strong, nonatomic) IBOutlet UISwitch *US;
@property (strong, nonatomic) IBOutlet UISwitch *NonUS;
@property (strong, nonatomic) IBOutlet UILabel *Result;
@property (strong, nonatomic) IBOutlet UILabel *Number;
@property (strong, nonatomic) IBOutlet UIImageView *Image;
- (IBAction)Calculate:(id)sender;
- (IBAction)US:(id)sender;
- (IBAction)NonUS:(id)sender;

@end

