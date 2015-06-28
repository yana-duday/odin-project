// Euler Project Problem 3
var num = 600851475143;
var prime = 0;

for (i = 0; i < num; i++) {

	if (num % i == 0) {
		prime = i;
		num = num / i;
	}

	if (prime == 1) {
		prime = num;
	}
}

// logs the solution
console.log(i);