//
//  PDCMasterViewController.m
//  Schedulio
//
//  Created by Kyle Oba on 10/29/13.
//  Copyright (c) 2013 Kyle Oba. All rights reserved.
//

#import "PDCMasterViewController.h"
#import "PDCDetailViewController.h"
#import "PDCScheduleMaster.h"

@interface PDCMasterViewController ()
@property (nonatomic, strong) IBOutlet PDCScheduleMaster *scheduleMaster;
@end

@implementation PDCMasterViewController

- (void)awakeFromNib
{
    [super awakeFromNib];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
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
