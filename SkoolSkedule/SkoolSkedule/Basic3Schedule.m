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
                     @"Period 3",
                     @"Period 4",
                     @"Period 7",
                     @"Period 8",
                     @"Period 5",
                     @"Lunch",
                     @"Period 6",
                     @"Period 1",
                     @"Period 2"
                     ];
    }
    return _courses;
}

@end
