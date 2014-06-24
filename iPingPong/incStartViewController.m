//
//  incStartViewController.m
//  iPingPong
//
//  Created by vlad on 6/16/14.
//  Copyright (c) 2014 vlad. All rights reserved.
//

#import "incStartViewController.h"

@interface incStartViewController ()

@end

@implementation incStartViewController

@synthesize timer,splashImageView,gameVC;

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
	splashImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Start"]];
	splashImageView.frame = CGRectMake(0, 0, 320, 480);
	[self.view addSubview:splashImageView];
	
	gameVC = [[incGameViewController alloc] initWithNibName:@"incGameViewController" bundle:[NSBundle mainBundle]];
	gameVC.view.alpha = 0.0;
	[self.view addSubview:gameVC.view];
	
	timer = [NSTimer scheduledTimerWithTimeInterval:2.0 target:self selector:@selector(fadeScreen) userInfo:nil repeats:NO];
}

-(void) onTimer{
	NSLog(@"LOAD");
}

- (void)fadeScreen
{
	[UIView beginAnimations:nil context:nil];
	[UIView setAnimationDuration:0.75];
	[UIView setAnimationDelegate:self];
	[UIView setAnimationDidStopSelector:@selector(finishedFading)];
	self.view.alpha = 0.0;
	[UIView commitAnimations];
}


- (void) finishedFading
{
	
	[UIView beginAnimations:nil context:nil];
	[UIView setAnimationDuration:0.75];
	self.view.alpha = 1.0;
	gameVC.view.alpha = 1.0;
	[UIView commitAnimations];
	[splashImageView removeFromSuperview];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
