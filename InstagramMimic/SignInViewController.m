//
//  SignInViewController.m
//  InstagramMimic
//
//  Created by Adam Johnson on 6/8/15.
//  Copyright (c) 2015 Adam. All rights reserved.
//

#import "SignInViewController.h"

@interface SignInViewController ()

@property (weak, nonatomic) IBOutlet UIButton *signUp;

@property (weak, nonatomic) IBOutlet UITextField *nameSignUpTextField;

@property (weak, nonatomic) IBOutlet UITextField *passwordSignUpTextField;


@property (weak, nonatomic) IBOutlet UIButton *logIn;

@property (weak, nonatomic) IBOutlet UITextField *nameLogInTextField;

@property (weak, nonatomic) IBOutlet UITextField *passwordLogInTextField;

@property NSString *signUpUsername;
@property NSString *signUpPassword;
@property NSString *logInUsername;
@property NSString *logInPassword;

@end


@implementation SignInViewController


- (void)viewDidLoad
{
    [super viewDidLoad];





}


-(void)viewDidAppear:(BOOL)animated
{
    self.nameSignUpTextField.text = @"";
    self.passwordSignUpTextField.text = @"";

    self.nameLogInTextField.text = @"";
    self.passwordLogInTextField.text = @"";
}



- (IBAction)signUp:(UIButton *)sender
{
    self.signUpUsername = self.nameSignUpTextField.text;

    self.signUpPassword = self.passwordSignUpTextField.text;

    NSLog(@"Username: %@, Password: %@", self.signUpUsername, self.signUpPassword);
}



- (IBAction)logIn:(UIButton *)sender
{
    self.logInUsername = self.nameLogInTextField.text;
    self.logInPassword = self.passwordLogInTextField.text;
}


-(BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)segue
{
    if ([self.signUpUsername isEqualToString:self.logInUsername] && [self.signUpPassword isEqualToString:self.logInPassword])
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}


@end
