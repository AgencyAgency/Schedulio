//
//  GenericSchedule.m
//  SkoolSkedule
//
//  Created by Kyle Oba on 10/30/13.
//  Copyright (c) 2013 Kyle Oba. All rights reserved.
//

#import "GenericSchedule.h"

@interface GenericSchedule ()
@property (nonatomic, strong) NSArray *courses;
@end

@implementation GenericSchedule

+ (NSUInteger)plus2:(NSUInteger)thing
{
    return thing + 2;
}

- (NSArray *)courses
{
    if (!_courses) {
        _courses = @[@"Period 1",
                     @"Period 2",
                     @"Period 3",
                     @"Period 4",
                     @"Period 5",
                     @"Lunch",
                     @"Period 6",
                     @"Period 7",
                     @"Period 8"
                     ];
    }
    return _courses;
}

#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.courses count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    NSDate *object = self.courses[indexPath.row];
    cell.textLabel.text = [object description];
    return cell;
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


@end
