//
//  PDCMenuViewController.m
//  Schedulio
//
//  Created by Kyle Oba on 10/30/13.
//  Copyright (c) 2013 Kyle Oba. All rights reserved.
//

#import "PDCMenuViewController.h"
#import "PDCScheduleMaster.h"
#import "PDCMasterViewController.h"

@interface PDCMenuViewController ()
@property (weak, nonatomic) IBOutlet UIPickerView *schedulePicker;
@property (nonatomic, strong) NSArray *schedules;
@end

@implementation PDCMenuViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    _schedulePicker.delegate = self;
    _schedulePicker.dataSource = self;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"showSchedule"]) {
        NSUInteger index = [self.schedulePicker selectedRowInComponent:0];
        NSLog(@"index: %i", index);
        NSLog(@"basic1: %i", kBasic1);
        [[segue destinationViewController] setScheduleType:index];
    }
}

- (NSArray *)schedules
{
    if (!_schedules) {
        _schedules = @[
                       @"Basic 1",
                       @"Basic 3",
                       @"Basic 7"
                       ];
    }
    return _schedules;
}


#pragma mark -
#pragma mark Picker Data Source

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return [self.schedules count];
}

#pragma mark - 
#pragma mark Picker Delegate

- (NSAttributedString *)pickerView:(UIPickerView *)pickerView attributedTitleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    NSString *title = self.schedules[row];
    return [[NSAttributedString alloc] initWithString:title];
}

@end
