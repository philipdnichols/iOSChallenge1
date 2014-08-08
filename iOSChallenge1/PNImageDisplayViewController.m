//
//  PNImageDisplayViewController.m
//  iOSChallenge1
//
//  Created by Philip Nichols on 8/8/14.
//  Copyright (c) 2014 Phil Nichols. All rights reserved.
//

#import "PNImageDisplayViewController.h"

@interface PNImageDisplayViewController ()

@end

@implementation PNImageDisplayViewController

#pragma mark - Gestures

- (IBAction)tappedOnImage:(UITapGestureRecognizer *)sender
{
    // Display "Hello World" to the user when this gesture recognizer (tap on image) fires
    [[[UIAlertView alloc] initWithTitle:@"Hello World"
                                message:@""
                               delegate:nil
                      cancelButtonTitle:@"OK"
                      otherButtonTitles: nil] show];
}

@end
