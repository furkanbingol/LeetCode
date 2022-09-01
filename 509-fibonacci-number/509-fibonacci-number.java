class Solution {
    public int fib(int n) {
        if(n <= 1)
            return n;
        return fib(n-1) + fib(n-2);
    }
}

/*
Memoization Solution(dp)

public int fib(int N) {
	if (N <= 1)
		return N;            

	HashMap<Integer, Integer> map = new HashMap<Integer, Integer>();
	map.put(0, 0);
	map.put(1, 1);

	return fib(N, map);
}

private int fib(int N, HashMap<Integer, Integer> map) {
	if (!map.containsKey(N)) {
		int currentFib = fib(N - 1, map) + fib(N - 2, map);
		map.put(N, currentFib);
	}

	return map.get(N);
}
*/