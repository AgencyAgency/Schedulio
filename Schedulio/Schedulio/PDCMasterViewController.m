//
//  PDCMasterViewController.m
//  Schedulio
//
//  Created by Kyle Oba on 10/29/13.
//  Copyright (c) 2013 Kyle Oba. All rights reserved.
//

#import "PDCMasterViewController.h"
#import "PDCDetailViewController.h"

@interface PDCMasterViewController ()
@property (nonatomic, strong) PDCScheduleMaster *scheduleMaster;
@end

@implementation PDCMasterViewController

- (void)setScheduleType:(ScheduleType)scheduleType
{
    if (_scheduleType == scheduleType && self.scheduleMaster) return;
    
    _scheduleType = scheduleType;
    self.scheduleMaster = [[PDCScheduleMaster alloc] initWithScheduleType:scheduleType];
    [self.tableView setDataSource:self.scheduleMaster];
    [self.tableView setDelegate:self.scheduleMaster];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"showDetail"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        id course = [self.scheduleMaster courseAtRow:indexPath.row];
        [[segue destinationViewController] setDetailItem:course];
    }
}

@end
