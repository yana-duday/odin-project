// Euler Project Problem 2
/* There is a more elegant way to do this with n1, n2, and next variables, 
however this was my initial solution where I wanted to make sure I could get 
the Fibonacci sequence right before processing it through. */

var counter=0;
var fibArray = [1,2];

for (i = 2; i < 100; i++) {
	fibArray[i] = fibArray[i-1] + fibArray[i-2];
}

for (i = 0; i < 100; i++) {
	if (fibArray[i] % 2 == 0 && fibArray[i] < 4000000) {
		counter += fibArray[i];
	}
}
console.log(counter);