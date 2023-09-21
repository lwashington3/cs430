int firstDecrease(int* L, int n){
	for(int i=2; i <= n && L[i] >= L[i-1]; i++){}
	return i;
}