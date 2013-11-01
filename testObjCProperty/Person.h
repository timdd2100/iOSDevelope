//
//  Person.h
//  testObjCProperty
//
//  Created by Kao Chao-Ting on 2013/11/1.
//  Copyright (c) 2013年 tim. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property(nonatomic) NSString *first_name;

@property(nonatomic) int age;

@property(nonatomic) int tuitionFee;

-(void) setAge:(int)age;

-(void) sing;



@end
