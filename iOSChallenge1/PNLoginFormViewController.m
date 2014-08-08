//
//  PNLoginFormViewController.m
//  iOSChallenge1
//
//  Created by Philip Nichols on 8/8/14.
//  Copyright (c) 2014 Phil Nichols. All rights reserved.
//

#import "PNLoginFormViewController.h"
#import "PNImageDisplayViewController.h"

@interface PNLoginFormViewController ()

@property (weak, nonatomic) IBOutlet UITextField *usernameTextField;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;

@end

@implementation PNLoginFormViewController

#pragma mark - Lifecycle

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    // Make sure no keyboard is open and no text fields have the focus whenever this view appears
    [self.usernameTextField resignFirstResponder];
    [self.passwordTextField resignFirstResponder];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    // Clear out the fields on this view when it is about to appear
    self.usernameTextField.text = @"";
    self.passwordTextField.text = @"";
}

#pragma mark - UIViewController

- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    static NSString *LoginSegueIdentifier = @"Login";
    
    if ([identifier isEqualToString:LoginSegueIdentifier]) {
        NSMutableArray *errors = [NSMutableArray array];

        // Test username:
        NSString *username = self.usernameTextField.text;
        NSRange range = [username rangeOfCharacterFromSet:[[NSCharacterSet letterCharacterSet] invertedSet]];
        if (range.location != NSNotFound) {
            [errors addObject:@"Username contains non-alphabetic characters."];
        }
        
        if ([username length] < 8) {
            [errors addObject:@"Username is not at least 8 characters in length."];
        }
        
        // Test password:
        NSString *password = self.passwordTextField.text;
        if ([password length] < 8) {
            [errors addObject:@"Password is not at least 8 characters in length."];
        }
        
        // If there are errors
        if ([errors count]) {
            // Display the errors to the user and don't allow the segue
            NSString *errorString = [errors componentsJoinedByString:@"\n"];
            [[[UIAlertView alloc] initWithTitle:@"Error!"
                                        message:errorString
                                       delegate:nil
                              cancelButtonTitle:@"OK"
                              otherButtonTitles: nil] show];
            return NO;
        } else {
            return YES;
        }
    }
    
    return YES;
}

@end
