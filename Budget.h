//
//  Budget.h
//  Vacation Budget
//
//  Created by Xiao G. Wu on 10/6/10.
//  Copyright 2010 Lockheed Martin. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface Budget : NSObject {
	float exchangeRate;
	double budget;
	double foreignCurrencyCharge;
}

- (void) createBudget: (double) aBudget withExchangeRate: (float) anExchangeRate;
- (void) spendDollars: (NSNumber*) dollars;
- (void) chargeForeignCurrency: (double) foreignCurrency;

@end
