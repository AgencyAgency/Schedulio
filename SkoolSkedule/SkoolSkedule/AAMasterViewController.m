//
//  AAMasterViewController.m
//  SkoolSkedule
//
//  Created by Kyle Oba on 10/30/13.
//  Copyright (c) 2013 Kyle Oba. All rights reserved.
//

#import "AAMasterViewController.h"
#import "AADetailViewController.h"
#import "GenericSchedule.h"
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
//    self.schedule = [[GenericSchedule alloc] init];
    self.schedule = [[Basic3Schedule alloc] init];
    self.tableView.delegate   = self.schedule;
    self.tableView.dataSource = self.schedule;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
