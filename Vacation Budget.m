#import <Foundation/Foundation.h>

int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

	//Variables
	float exchangeRate = 1.2500;
	double budget = 1000.00;
	double euroCharge;
	
	NSLog(@"Starting budget is $%.2f", budget);
	
	budget = budget - 100;
	NSLog(@"Spending $100 leaves $%.2f in the budget", budget);
	
	euroCharge = 100 * exchangeRate;
	budget = budget - euroCharge;
	NSLog(@"100 Euros is equal to $%.2f", euroCharge);
	NSLog(@"Charging 100 Euros leaves $%.2f in the budget", budget);
	
    [pool drain];
    return 0;
}
