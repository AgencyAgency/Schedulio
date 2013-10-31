//
//  Basic3Schedule.m
//  SkoolSkedule
//
//  Created by Kyle Oba on 10/30/13.
//  Copyright (c) 2013 Kyle Oba. All rights reserved.
//

#import "Basic3Schedule.h"

@interface Basic3Schedule ()
@property (nonatomic, strong) NSArray *courses;
@end

@implementation Basic3Schedule

- (NSArray *)courses
{
    if (!_courses) {
        _courses = @[
                     PERIOD_3,
                     PERIOD_4,
                     PERIOD_7,
                     PERIOD_8,
                     PERIOD_5,
                     PERIOD_LUNCH,
                     PERIOD_6,
                     PERIOD_1,
                     PERIOD_2
                     ];
    }
    return _courses;
}

@end
