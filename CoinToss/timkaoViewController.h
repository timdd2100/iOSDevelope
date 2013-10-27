//
//  timkaoViewController.h
//  CoinToss
//
//  Created by Kao Chao-Ting on 13/10/5.
//  Copyright (c) 2013年 Kao Chao-Ting. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface timkaoViewController : UIViewController
{
    UILabel *status;
    UILabel *result;
}
@property (nonatomic, retain) IBOutlet UILabel *status;
@property (nonatomic, retain) IBOutlet UILabel *result;

- (IBAction)callHeads;
- (IBAction)callTails;

@end


