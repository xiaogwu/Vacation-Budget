//
//  Transaction.h
//  Vacation Budget
//
//  Created by Xiao G. Wu on 10/6/10.
//  Copyright 2010 Lockheed Martin. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Budget.h"

typedef enum {cash, charge} transactionType;

@interface Transaction : NSObject {

	transactionType type;
	double amount;
}

- (void) createTransaction: (double) theAmount ofType: (transactionType) aType;
- (double) returnAmount;
- (transactionType) returnType;

@end
