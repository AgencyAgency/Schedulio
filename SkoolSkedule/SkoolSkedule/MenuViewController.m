//
//  MenuViewController.m
//  SkoolSkedule
//
//  Created by Kyle Oba on 10/30/13.
//  Copyright (c) 2013 Kyle Oba. All rights reserved.
//

#import "MenuViewController.h"
#import "AAMasterViewController.h"


@interface MenuViewController ()
- (IBAction)schedulePressed:(UIButton *)sender;
@end

@implementation MenuViewController

- (IBAction)schedulePressed:(UIButton *)sender {
    NSLog(@"segue: %i", [(UIButton *)sender tag]);
    [self performSegueWithIdentifier:@"showSchedule" sender:sender];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"showSchedule"]) {
        [segue.destinationViewController setScheduleIndex:[(UIButton *)sender tag]];
    }
}


@end
