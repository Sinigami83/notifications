//
//  Government.h
//  NotificationsTests
//
//  Created by Nodir Latipov on 10/18/18.
//  Copyright © 2018 Home. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


extern NSString* const GovernmentTaxLevelDidChangeNotification; // класс свойство действие Notification
extern NSString* const GovernmentSalaryDidChangeNotification;
extern NSString* const GovernmentPensionDidChangeNotification;
extern NSString* const GovernmentAveragePriceDidChangeNotification;


extern NSString* const GovernmentTaxLevelUserInfoKey;
extern NSString* const GovernmentSalaryUserInfoKey;
extern NSString* const GovernmentPensionUserInfoKey;
extern NSString* const GovernmentAveragePriceUserInfoKey;


@interface Government : NSObject

@property (nonatomic, assign) CGFloat taxLevel;
@property (nonatomic, assign) CGFloat salary;
@property (nonatomic, assign) CGFloat pension;
@property (nonatomic, assign) CGFloat averagePrice;

@end
