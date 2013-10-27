//
//  timkaoViewController.m
//  CoinToss
//
//  Created by Kao Chao-Ting on 13/10/5.
//  Copyright (c) 2013年 Kao Chao-Ting. All rights reserved.
//

#import "timkaoViewController.h"
#import <QuartzCore/QuartzCore.h>


@implementation timkaoViewController
@synthesize status,result;





-(void) runprocess:(BOOL)userCalledHeads{
    BOOL coinLandedOnHeads = (arc4random()%2) == 0;
    
    result.text = coinLandedOnHeads?@"Heads" : @"Tails";
    
    if (coinLandedOnHeads == userCalledHeads) {
        status.text = @"correct";
    }
    else
    {
        status.text = @"wrong";
    }
    
    CABasicAnimation *rotation = [CABasicAnimation animationWithKeyPath:@"transform.rotation"];
    
    rotation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    
    rotation.fromValue = [NSNumber numberWithFloat:0.0f];
    rotation.toValue = [NSNumber numberWithFloat:720 * M_PI / 180.0f];
    rotation.duration = 2.0f;
    
    [status.layer addAnimation:rotation forKey:@"rotate"];
    
    
    CABasicAnimation *fade = [CABasicAnimation animationWithKeyPath:@"opacity"];
    
    fade.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    
    fade.fromValue = [NSNumber numberWithFloat:0.0f];
    fade.toValue = [NSNumber numberWithFloat:1.0f];
    fade.duration = 3.5f;
    
    [status.layer addAnimation:fade forKey:@"fade"];
    }
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
