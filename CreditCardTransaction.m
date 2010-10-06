//
//  CreditCardTransaction.m
//  Vacation Budget
//
//  Created by Xiao G. Wu on 10/6/10.
//  Copyright 2010 Lockheed Martin. All rights reserved.
//

#import "CreditCardTransaction.h"
#import "Budget.h"


@implementation CreditCardTransaction

- (void) spend {
	[super trackSpending: amount];
	[budget chargeForeignCurrency: amount];
}

@end
