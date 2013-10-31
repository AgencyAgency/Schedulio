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
@property (nonatomic, strong) NSDictionary *courseTitles;
@end

@implementation GenericSchedule

- (NSDictionary *)courseTitles
{
    if (!_courseTitles) {
        _courseTitles = @{
                          PERIOD_1: @"1: Biology",
                          PERIOD_2: @"2: Astro-Physics",
                          PERIOD_3: @"3: Underwater Basket-Weaving",
                          PERIOD_4: @"4: Addition 101",
                          PERIOD_5: @"5: iPad App Design & Development",
                          PERIOD_6: @"6: Cheese-making",
                          PERIOD_7: @"7: Chemistry",
                          PERIOD_8: @"8: LASERs!",
                          };
    }
    return _courseTitles;
}

- (NSArray *)courses
{
    if (!_courses) {
        _courses = @[@"Nothing to show here."];
    }
    return _courses;
}

- (NSString *)titleForRow:(NSUInteger)row
{
    NSString *key = [self.courses objectAtIndex:row];
    return self.courseTitles[key];
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
    
    cell.textLabel.text = [self titleForRow:indexPath.row];
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
