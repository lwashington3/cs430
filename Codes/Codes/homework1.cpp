#include "homework1.h"

void print_array(int A[], size_t size) {
	for (int i = 0; i < size; i++) {
		std::cout << *(A + i) << ",\t";
	}
}

void swap(int A[], int i, int j) {
	int tmp = A[i];
	A[i] = A[j];
	A[j] = tmp;
}

#pragma region Problem3
void IterativeBubbleSort(int A[], size_t n) {
	print_array(A, n);
	std::cout << std::endl;
	int end = n - 2;
	int swap_index = 0;
	while (swap_index != -1 && end != 1) {
		swap_index = -1;
		for (int i = 0; i <= end; i++) {
			if (A[i] > A[i + 1]) {
				swap(A, i, i + 1);
				swap_index = i;
				print_array(A, n);
				std::cout << std::endl;
			}
		}

		if (swap_index > 1) {
			end = swap_index - 1;
		}
	}
	print_array(A, n);
	std::cout << std::endl;
}
#pragma endregion


#pragma region Problem 6
int X(int N) {
	if (N <= 1) {
		return 1;
	}
	else {
		return X(N - 1) + X(N - 1);
	}
}

int Y(int N) {
	if (N <= 1) {
		return 1;
	}
	else {
		int temp = Y(N - 1);
		return (temp + temp);
	}
}
#pragma endregion


#pragma region Problem 7
void foo(int A[], int start, int end, size_t size) {
	std::cout << "A[] = [";
	print_array(A, size);
	std::cout << "]" << std::endl;

	if (end <= 1) {
		return;
	}

	if (A[start] > A[end - 1]) {
		swap(A, start, end - 1);
	}

	foo(A, start + 1, end - 2, size);

	if (A[start] > A[start + 1]) {
		swap(A, start, start + 1);
	}

	foo(A, start + 1, end - 1, size);
}
#pragma endregion