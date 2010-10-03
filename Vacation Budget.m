#import <Foundation/Foundation.h>

struct budget {
	float exchangeRate;
	double budget;
	double euroCharge;
};

int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

	//Variables
	struct budget vacationBudget;
	
	vacationBudget.budget = 1000.00;
	vacationBudget.exchangeRate = 1.2500;
	NSLog(@"Starting budget is $%.2f", vacationBudget.budget);
	
	vacationBudget.budget = vacationBudget.budget - 100;
	NSLog(@"Spending $100 leaves $%.2f in the budget", vacationBudget.budget);
	
	vacationBudget.euroCharge = 100 * vacationBudget.exchangeRate;
	vacationBudget.budget = vacationBudget.budget - vacationBudget.euroCharge;
	NSLog(@"100 Euros is equal to $%.2f", vacationBudget.euroCharge);
	NSLog(@"Charging 100 Euros leaves $%.2f in the budget", vacationBudget.budget);
	
    [pool drain];
    return 0;
}
