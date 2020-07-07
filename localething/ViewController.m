//
//  ViewController.m
//  localething
//
//  Created by Raj Patel on 23/05/18.
//  Copyright © 2018 Idontknowsomething. All rights reserved.
//

#import "ViewController.h"
#include <os/log.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    os_log_with_type(OS_LOG_DEFAULT, OS_LOG_TYPE_FAULT, "melogging fault");
    os_log_with_type(OS_LOG_DEFAULT, OS_LOG_TYPE_DEBUG, "melogging debug");
    os_log_with_type(OS_LOG_DEFAULT, OS_LOG_TYPE_INFO, "melogging info");
    os_log_with_type(OS_LOG_DEFAULT, OS_LOG_TYPE_ERROR, "melogging error");
    os_log_with_type(OS_LOG_DEFAULT, OS_LOG_TYPE_DEFAULT, "melogging default");
    NSLog(@"melogging NSlog");
    NSDecimalNumber *someAmount = [NSDecimalNumber decimalNumberWithString:@"100.00"];
    NSNumberFormatter *currencyFormatter = [[NSNumberFormatter alloc] init];
    [currencyFormatter setNumberStyle:NSNumberFormatterCurrencyStyle];
    // Do any additional setup after loading the view, typically from a nib.
    NSString *language = [[NSLocale preferredLanguages] firstObject];
    NSString *localizedDateTime = [NSDateFormatter localizedStringFromDate:[NSDate date] dateStyle:NSDateFormatterMediumStyle timeStyle:NSDateFormatterShortStyle];
    self.currency.text = [currencyFormatter stringFromNumber:someAmount];
    self.timestamp.text = localizedDateTime;
    self.current_language.text = language;
    NSLocale *currentLocale = [NSLocale currentLocale];  // get the current locale.
    self.current_locale.text = [currentLocale objectForKey:NSLocaleIdentifier];
    NSLog(@"abcd");
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
