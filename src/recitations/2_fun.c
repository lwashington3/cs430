int fun(int n){
	int count = 0;
	for(int i = 0; i < n; i++){
		for(int j = i; j > 0; j--){
			count = count + 1;
		}
	}
	return count;
}