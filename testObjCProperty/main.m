//
//  main.m
//  testObjCProperty
//
//  Created by Kao Chao-Ting on 2013/11/1.
//  Copyright (c) 2013年 tim. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Person.h"

#import "Teacher.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        //NSLog(@"Hello, World!");
        
        Person *p = [Person new];
        p.first_name = @"bill";
        p.age = -10;
        
        NSLog(@"%@ is %i years old", p.first_name, p.age);
        
        [p sing];
        
        Teacher *tea = [Teacher new];
        tea.first_name = @"zoe";
        tea.age = 25;
        
        NSLog(@"%@ is %i years old", tea.first_name, tea.age);
        [tea sing];
        
        
    }
    return 0;
}

