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
