//
//  Model.m
//  Assignment 1
//
//  Created by Rhapsody P. Budiono on 2/16/15.
//  Copyright (c) 2015 Rhapsody P. Budiono. All rights reserved.
//
//Rhapsody Budiono
//CWID : 893925362
// This file holds the calculation and conversion (From inches to cms and from lbs to kgs)

#import <Foundation/Foundation.h>
#import "Model.h"


@interface Model()

@property (assign) double X;
@property (assign) double Y;


@end

@implementation Model

@synthesize X = x;
@synthesize Y = y;


-(double)calculate:(int)height andlbs:(int)weight {
    x = height * 2.54 / 100.0;
    y = weight * 0.45359237 / (x * x);
    return y;
}

-(double)calculateNonUS:(int)height andkg:(int)weight {
     x = height / 100.0;
    y = weight / (x * x);
    return y;
    
}



@end



