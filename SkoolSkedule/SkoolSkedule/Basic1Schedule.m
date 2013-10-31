//
//  Basic1Schedule.m
//  SkoolSkedule
//
//  Created by Kyle Oba on 10/30/13.
//  Copyright (c) 2013 Kyle Oba. All rights reserved.
//

#import "Basic1Schedule.h"

@interface Basic1Schedule ()
@property (nonatomic, strong) NSArray *courses;
@end

@implementation Basic1Schedule

- (NSArray *)courses
{
    if (!_courses) {
        _courses = @[PERIOD_1,
                     PERIOD_2,
                     PERIOD_3,
                     PERIOD_4,
                     PERIOD_5,
                     PERIOD_LUNCH,
                     PERIOD_6,
                     PERIOD_7,
                     PERIOD_8
                     ];
    }
    return _courses;
}

@end
