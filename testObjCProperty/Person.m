//
//  Person.m
//  testObjCProperty
//
//  Created by Kao Chao-Ting on 2013/11/1.
//  Copyright (c) 2013年 tim. All rights reserved.
//

#import "Person.h"

@implementation Person

@synthesize first_name = _first_name, age = _age, tuitionFee = _tuitionFee;

-(void)setAge:(int)age
{
    if(age < 0)
    {
        _age = 0;
    }
    else
    {
        _age = age;
    }
    self.tuitionFee = 1000;
}

-(void) sing{
    NSLog(@"%@ is singing.",self.first_name);
}


@end
