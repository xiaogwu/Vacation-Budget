//
//  Budget.m
//  Vacation Budget
//
//  Created by Xiao G. Wu on 10/6/10.
//  Copyright 2010 Lockheed Martin. All rights reserved.
//

#import "Budget.h"


@implementation Budget

- (void) createBudget: (double) aBudget withExchangeRate: (float) anExchangeRate {
	exchangeRate = anExchangeRate;
	budget = aBudget;
	NSLog(@"Starting budget is $%.2f", budget);
}
- (void) spendDollars: (double) dollars {
	budget = budget - dollars;
	NSLog(@"Spending $%.2f leaves $%.2f in the budget", dollars, budget);
}
- (void) chargeForeignCurrency: (double) foreignCurrency {
	foreignCurrencyCharge = foreignCurrency * exchangeRate;
	budget = budget - foreignCurrencyCharge;
	NSLog(@"%.2f foreignCurrency is equal to $%.2f", foreignCurrency, foreignCurrencyCharge);
	NSLog(@"Charging %.2f foreignCurrency leaves $%.2f in the budget", foreignCurrency, budget);
}

@end
