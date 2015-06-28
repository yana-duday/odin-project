// Euler Project Problem 1
var counter = 0;

for (i = 0; i < 1000; i++) {
	if (i % 3 == 0) {
		counter += i;
	}
	else if (i % 5 == 0) {
		counter += i;
	}
}

console.log(counter);