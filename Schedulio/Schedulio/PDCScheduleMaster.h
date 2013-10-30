//
//  PDCScheduleMaster.h
//  Schedulio
//
//  Created by Kyle Oba on 10/30/13.
//  Copyright (c) 2013 Kyle Oba. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, ScheduleType) {
    kBasic1,
    kBasic3,
    kBasic7
};

@interface PDCScheduleMaster : NSObject <UITableViewDataSource, UITableViewDelegate>
- (id)initWithScheduleType:(ScheduleType)scheduleType;
- (id)courseAtRow:(NSUInteger)row;
@end
