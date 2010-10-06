#import <Foundation/Foundation.h>
#import "Budget.h"
#import "Transaction.h"

int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

	// Local Variables
	// Spend amounts
	double numberDollars = 100;
//	double numberEuros = 100;
	double numberPounds = 100;
	
	NSMutableArray *transactions = [[NSMutableArray alloc] initWithCapacity: 10];
	Transaction *aTransaction;
	for (int n = 1; n < 2; n++) {
		aTransaction = [Transaction new];
		[aTransaction createTransaction: n * 100 ofType: cash];
		[transactions addObject: aTransaction];
	}
	
	int n = 1;
	while (n < 3) {
		aTransaction = [Transaction new];
		[aTransaction createTransaction: n * 100 ofType: charge];
		[transactions addObject: aTransaction];
		n++;
	}
	
	do {
		aTransaction = [Transaction new];
		[aTransaction createTransaction: n * 100 ofType: charge];
		[transactions addObject: aTransaction];
		n++;
	} while (n <= 3);
	
	// Europe Vacation Budget
	//Instantiate new Europe Vacation Budget Object
	Budget *europeBudget = [Budget new];
	NSLog(@"Creating Europe Budget");
			
	//Send messages to Europe Vacation Budget Object
	[europeBudget createBudget: 1000.00 withExchangeRate: 1.2500];
		
	for (Transaction *aTransaction in transactions) {
		switch ([aTransaction returnType]) {
			case cash:
				[europeBudget spendDollars: [aTransaction returnAmount]];
				break;
			case charge:
				[europeBudget chargeForeignCurrency: [aTransaction returnAmount]];
				break;

			default:
				break;
		}
	}
	
		// England Vacation Budget
	//Instantiate new Englad Vacation Budget Object
	Budget *englandBudget = [Budget new];
	NSLog(@"Creating England Budget");
	
	//Send messages to Englad Vacation Budget Object
	[englandBudget createBudget: 2000.00 withExchangeRate: 1.5000];
	[englandBudget spendDollars: numberDollars];
	[englandBudget chargeForeignCurrency: numberPounds];
	
    [pool drain];
    return 0;
}


