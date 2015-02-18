//
//  Model.h
//  Assignment 1
//
//  Created by Rhapsody P. Budiono on 2/16/15.
//  Copyright (c) 2015 Rhapsody P. Budiono. All rights reserved.
//
//Rhapsody Budiono
//CWID : 893925362
// This file holds the declarations for the functions to be called.
#import <Foundation/Foundation.h>

@interface Model : NSObject

-(double)calculateNonUS:(int)height andkg:(int)weight;
-(double)calculate:(int)height andlbs:(int)weight;

@end
