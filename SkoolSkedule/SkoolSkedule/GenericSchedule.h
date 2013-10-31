//
//  GenericSchedule.h
//  SkoolSkedule
//
//  Created by Kyle Oba on 10/30/13.
//  Copyright (c) 2013 Kyle Oba. All rights reserved.
//

#import <Foundation/Foundation.h>

#define PERIOD_1 @"PERIOD 1"
#define PERIOD_2 @"PERIOD 2"
#define PERIOD_3 @"PERIOD 3"
#define PERIOD_4 @"PERIOD 4"
#define PERIOD_5 @"PERIOD 5"
#define PERIOD_6 @"PERIOD 6"
#define PERIOD_7 @"PERIOD 7"
#define PERIOD_8 @"PERIOD 8"
#define PERIOD_LUNCH @"LUNCH"

@interface GenericSchedule : NSObject <UITableViewDataSource, UITableViewDelegate>
- (NSString *)titleForRow:(NSUInteger)row;
@end
