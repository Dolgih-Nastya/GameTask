//
//  incStartViewController.h
//  iPingPong
//
//  Created by vlad on 6/16/14.
//  Copyright (c) 2014 vlad. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "incGameViewController.h"

@interface incStartViewController : UIViewController
{
NSTimer *timer;
UIImageView *splashImageView;

incGameViewController *viewController;
}

@property(nonatomic,retain) NSTimer *timer;
@property(nonatomic,retain) UIImageView *splashImageView;
@property(nonatomic,retain) incGameViewController *gameVC;

@end
