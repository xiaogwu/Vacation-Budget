#import <Foundation/Foundation.h>
/*
typedef struct {
	float exchangeRate;
	double budget;
	double foreignCurrencyCharge;
} budget;
*/

@interface Budget : NSObject {
	float exchangeRate;
	double budget;
	double foreignCurrencyCharge;
}

- (void) createBudget: (double) aBudget withExchangeRate: (float) anExchangeRate;
- (void) spendDollars: (double) dollars;
- (void) chargeForeignCurrency: (double) foreignCurrency;

@end

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
	double numberDollars = 100;
	double numberEuros = 100;
	double numberPounds = 100;
	
	// Europe Vacation Budget
	//Instantiate new Europe Vacation Budget Object
	Budget *europeBudget = [Budget new];
	NSLog(@"Creating Europe Budget");
	
	//Send messages to Europe Vacation Budget Object
	[europeBudget createBudget: 1000.00 withExchangeRate: 1.2500];
	[europeBudget spendDollars: numberDollars];
	[europeBudget chargeForeignCurrency: numberEuros];
	
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


