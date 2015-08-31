/*******************************************
* Euler Challenge 1: Multiples of 3 & 5
********************************************/

var multiples = [];
var total = 0;

// Loop through numbers 0 to 1000
// If they are evenly divisible by 3 or 5,
// Add that number to the array
for (i = 1; i < 1000; i++) {
	if (i % 3 === 0 || i % 5 === 0) {
        multiples.push(i);
    }
}

// Add all of the values of the array together
for (i = 0; i < multiples.length; i++) {
    total += multiples[i];
}

// Output the results
var output = 'The values are: ';
output += multiples.toString();
output += '\nAnd the total is: ';
output += total; 
console.log(output);

/*******************************************
* Euler Challenge 2: Fibonacci Numbers
********************************************/

// Initial values
var num1 = 1;
var num2 = 2;
var holder = 0;
var fibonacci = 0;

// Generate numbers in Fibonacci sequence
while (num2 < 4000000) {
    
    // If the value is even, add it to the array
    if (num2 % 2 === 0) {
    	fibonacci += num2;
    }

    // Create the next number in the sequence
    holder = num2;
    num2 += num1;
    num1 = holder;
} 

// Print the results
console.log(fibonacci);

/*******************************************
* Euler Challenge 3: Largest Prime Number
********************************************/

var number = 13195;
var factors = [];
var prime;

for (divisor = Math.ceil(number / 2); divisor >= 1; divisor--) {

	// Check if divisor is factor
	if (number % divisor === 0) {
		// Check if prime
		prime = true;
		for (i = 2; i < (divisor/2); i++) {
			if (divisor % i === 0 && prime === true) {
				prime = false;
				console.log('Breaking at factor ' + divisor);
				break;
			}
		}
		if (prime === true) {
			console.log('Largest prime factor of ' + number + ' is ' + divisor);
			break;
		}
	}
}