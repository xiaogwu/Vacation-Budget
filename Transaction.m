//
//  Transaction.m
//  Vacation Budget
//
//  Created by Xiao G. Wu on 10/6/10.
//  Copyright 2010 Lockheed Martin. All rights reserved.
//

#import "Transaction.h"


@implementation Transaction

- (void) createTransaction: (double) theAmount ofType: (transactionType) aType {
	amount = theAmount;
	type = aType;
}

- (double) returnAmount {
	return amount;
}

- (transactionType) returnType {
	return type;
}


@end
