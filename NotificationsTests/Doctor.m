//
//  Doctor.m
//  NotificationsTests
//
//  Created by Nodir Latipov on 10/18/18.
//  Copyright © 2018 Home. All rights reserved.
//

#import "Doctor.h"
#import "Government.h"


@implementation Doctor

#pragma mark - Initialization

- (id)init
{
    self = [super init];
    if (self) {
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(salaryChangeNotification:)
                                                     name:GovernmentSalaryDidChangeNotification
                                                   object:nil];

        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(averagePriceChangeNotification:)
                                                     name:GovernmentAveragePriceDidChangeNotification
                                                   object:nil];
    }
    return self;
}

-(void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

#pragma mark - Notifications

- (void)salaryChangeNotification:(NSNotification *)notification
{
    NSNumber *value = [notification.userInfo objectForKey:GovernmentSalaryUserInfoKey];
    CGFloat salary = [value floatValue];
    

    self.salary = salary;
}

- (void)averagePriceChangeNotification:(NSNotification *)notification
{
    NSLog(@"Doctors are happy!");
}

@end
