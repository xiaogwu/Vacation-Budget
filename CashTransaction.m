//
//  CashTransaction.m
//  Vacation Budget
//
//  Created by Xiao G. Wu on 10/6/10.
//  Copyright 2010 Lockheed Martin. All rights reserved.
//

#import "CashTransaction.h"
#import "Budget.h"


@implementation CashTransaction

- (void) spend {
	[super trackSpending: amount];
	[budget spendDollars: amount];
}

@end
