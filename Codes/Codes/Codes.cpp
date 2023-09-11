#include <iostream>
#include "homework1.h"

int problem3() {
	const size_t size = 40;
	int A[size];

	for (int i = 0; i < size; i++) {
		A[i] = std::rand();
	}

	std::cout << "Starting with: ";
	print_array(A, size);
	std::cout << std::endl;

	IterativeBubbleSort(A, size);
	
	std::cout << "Ending with: ";
	print_array(A, size);
	std::cout << std::endl;

	return 0;
}

int problem6() {
	for (int i = 0; i < 10; i++) {
		std::cout << "i=" << i << "\tX=" << X(i) << "\tY=" << Y(i) << "\tf=" << pow(2, i-1) <<  std::endl;
	}
	return 0;
}

int problem7() {
	const size_t size = 8;
	int A[size] = {5, 6, 1, 90, 17, 3, 56, 8};

	/*std::cout << "Starting with: ";
	print_array(A, size);
	std::cout << std::endl;*/
	
	foo(A, 0, size, size);
	/*std::cout << "Ending with: ";
	print_array(A, size);
	std::cout << std::endl;*/

	return 0;
}

int main() {
	return problem3();
}