//
//  incMainViewController.m
//  iPingPong
//
//  Created by Анастасия Долгих on 6/18/14.
//  Copyright (c) 2014 Анастасия Долгих. All rights reserved.
//

#import "incMainViewController.h"
#import "incSocialViewController.h"
#import "incStartViewController.h"
#import "incLevelViewController.h"

@interface incMainViewController ()

@end

@implementation incMainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [[self navigationController] setNavigationBarHidden:YES];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)optionsButtonDidClick:(id)sender
{
    [self.navigationController pushViewController:[incSocialViewController new] animated:YES];
}

- (IBAction)startButtonDidClick:(id)sender
{
    [self.navigationController pushViewController:[incGameViewController new] animated:YES];
}

- (IBAction)levelButtonDidClick:(id)sender
{
    [self.navigationController pushViewController:[incLevelViewController new] animated:YES];
}


@end
