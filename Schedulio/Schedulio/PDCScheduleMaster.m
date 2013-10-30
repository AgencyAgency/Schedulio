//
//  PDCScheduleMaster.m
//  Schedulio
//
//  Created by Kyle Oba on 10/30/13.
//  Copyright (c) 2013 Kyle Oba. All rights reserved.
//

#import "PDCScheduleMaster.h"

@interface PDCScheduleMaster ()
@property (nonatomic, strong) NSMutableArray *courses;
@property (nonatomic, assign) ScheduleType scheduleType;
@end

@implementation PDCScheduleMaster

- (id)initWithScheduleType:(ScheduleType)scheduleType
{
    self = [super init];
    if (self) {
        _scheduleType = scheduleType;
    }
    return self;
}

+ (NSArray *)coursesForScheduleType:(ScheduleType)scheduleType
{
    switch (scheduleType) {
        case kBasic1:
            return @[@"P1",
                     @"P2",
                     @"P3",
                     @"P4",
                     @"P5",
                     @"LUNCH",
                     @"P6",
                     @"P7",
                     @"P8",
                     ];
        case kBasic3:
            return @[@"P3",
                     @"P4",
                     @"P7",
                     @"P8",
                     @"P5",
                     @"LUNCH",
                     @"P6",
                     @"P1",
                     @"P2",
                     ];
            
        case kBasic7:
            return @[@"P7",
                     @"P8",
                     @"P1",
                     @"P2",
                     @"P5",
                     @"LUNCH",
                     @"P6",
                     @"P3",
                     @"P4",
                     ];
            
        default:
            break;
    }
}



- (NSMutableArray *)courses
{
    if (!_courses) {
        NSArray *c = [self.class coursesForScheduleType:self.scheduleType];
        _courses = [NSMutableArray arrayWithArray:c];
    }
    return _courses;
}

- (id)courseAtRow:(NSUInteger)row
{
    return self.courses[row];
}

#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.courses.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    NSDate *object = self.courses[indexPath.row];
    cell.textLabel.text = [object description];
    return cell;
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [self.courses removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
    }
}

/*
 // Override to support rearranging the table view.
 - (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
 {
 }
 */

/*
 // Override to support conditional rearranging of the table view.
 - (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
 {
 // Return NO if you do not want the item to be re-orderable.
 return YES;
 }
 */


#pragma mark -
#pragma Table View Delegates

- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
    CGFloat hueRange = 0.1;
    CGFloat hueDelta = hueRange * (float)indexPath.row / (float)self.courses.count;
    CGFloat hueStart = 0.0;
    UIColor *backColor = [UIColor colorWithHue:hueStart + hueDelta
                                    saturation:1.0
                                    brightness:1.0
                                         alpha:1.0];
    cell.backgroundColor = backColor;
}

@end
