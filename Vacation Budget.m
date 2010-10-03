#import <Foundation/Foundation.h>

typedef struct {
	float exchangeRate;
	double budget;
	double euroCharge;
} budget;

budget vacationBudget;

//spendDollars function
void spendDollars (double dollars) {
	vacationBudget.budget = vacationBudget.budget - dollars;
}

//chargeEuro function
void chargeEuros (double euros) {
	vacationBudget.euroCharge = euros * vacationBudget.exchangeRate;
	vacationBudget.budget = vacationBudget.budget - vacationBudget.euroCharge;
}

int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

	//Variables
	vacationBudget.budget = 1000.00;
	vacationBudget.exchangeRate = 1.2500;
	double numberDollars = 100;
	double numberEuros = 100;
	NSLog(@"Starting budget is $%.2f", vacationBudget.budget);
	
	spendDollars(numberDollars);
	NSLog(@"Spending $100 leaves $%.2f in the budget", vacationBudget.budget);
	
	chargeEuros(numberEuros);
	NSLog(@"100 Euros is equal to $%.2f", vacationBudget.euroCharge);
	NSLog(@"Charging 100 Euros leaves $%.2f in the budget", vacationBudget.budget);
	
    [pool drain];
    return 0;
}
