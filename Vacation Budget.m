#import <Foundation/Foundation.h>
#import "Budget.h"

/*
typedef struct {
	float exchangeRate;
	double budget;
	double foreignCurrencyCharge;
} budget;
*/

/*
// Varible Declariations
budget vacationBudgetEurope;
budget vacationBudgetEngland;

// Function Declariations
void spendDollars (budget *theBudget, double dollars);
void chargeForeignCurrency (budget *theBudget, double foreignCurrency);
*/

int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

	// Local Variables
	// Spend amounts
	//double numberDollars = 100;
	NSNumber *numberDollarsTransaction = [[NSNumber alloc] initWithDouble: 100.00];
	NSNumber *numberDollarsTransaction2 = [[NSNumber alloc] initWithDouble: 200.00];
	double numberEuros = 100;
	double numberPounds = 100;
	
	//Create NSMutableArray to hold transactions
	NSMutableArray *europeTransactions = [[NSMutableArray alloc] initWithCapacity: 1];
	
	//Add transaction objects to transactions Array
	[europeTransactions addObject: numberDollarsTransaction];
	[europeTransactions addObject: numberDollarsTransaction2];
	
	
	// Europe Vacation Budget
	//Instantiate new Europe Vacation Budget Object
	Budget *europeBudget = [Budget new];
	NSLog(@"Creating Europe Budget");
			
	//Send messages to Europe Vacation Budget Object
	[europeBudget createBudget: 1000.00 withExchangeRate: 1.2500];
	//[europeBudget spendDollars: numberDollarsTransaction];
	
	for (NSNumber *aTransaction in europeTransactions) {
		[europeBudget spendDollars: aTransaction];
	}
	
	[europeBudget chargeForeignCurrency: numberEuros];
	
	// England Vacation Budget
	//Instantiate new Englad Vacation Budget Object
	Budget *englandBudget = [Budget new];
	NSLog(@"Creating England Budget");
	
	//Send messages to Englad Vacation Budget Object
	[englandBudget createBudget: 2000.00 withExchangeRate: 1.5000];
	[englandBudget spendDollars: numberDollarsTransaction];
	[englandBudget chargeForeignCurrency: numberPounds];
	
    [pool drain];
    return 0;
}

/*
//Functions implementations

//spendDollars function
void spendDollars (budget *theBudget, double dollars) {
	theBudget->budget = theBudget->budget - dollars;
}

//chargeEuro function
void chargeForeignCurrency (budget *theBudget, double foreignCurrency) {
	theBudget->foreignCurrencyCharge = foreignCurrency * theBudget->exchangeRate;
	theBudget->budget = theBudget->budget - theBudget->foreignCurrencyCharge;
}
 */


