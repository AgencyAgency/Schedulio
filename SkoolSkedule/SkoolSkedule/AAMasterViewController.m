//
//  AAMasterViewController.m
//  SkoolSkedule
//
//  Created by Kyle Oba on 10/30/13.
//  Copyright (c) 2013 Kyle Oba. All rights reserved.
//

#import "AAMasterViewController.h"
#import "AADetailViewController.h"
#import "Basic1Schedule.h"
#import "Basic3Schedule.h"

@interface AAMasterViewController ()
@property (nonatomic, strong) GenericSchedule *schedule;
@property (strong, nonatomic) IBOutlet UITableView *tableView;
@end

@implementation AAMasterViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)setScheduleIndex:(NSUInteger)scheduleIndex
{
    _scheduleIndex = scheduleIndex;
    switch (scheduleIndex) {
        case 0:
            self.schedule = [[Basic1Schedule alloc] init];
            break;
        case 1:
            self.schedule = [[Basic3Schedule alloc] init];
            break;
            
        default:
            break;
    }
    self.tableView.delegate   = self.schedule;
    self.tableView.dataSource = self.schedule;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
//    if ([[segue identifier] isEqualToString:@"showDetail"]) {
//        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
//        NSDate *object = _objects[indexPath.row];
//        [[segue destinationViewController] setDetailItem:object];
//    }
}

@end
