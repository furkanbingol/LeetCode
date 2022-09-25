class Solution {
    public int[] dailyTemperatures(int[] temperatures) {
        Stack<Integer> st = new Stack<>();
        int[] res = new int[temperatures.length];

        for(int i = 0; i < temperatures.length; i++) {
            while(!st.isEmpty() && temperatures[i] > temperatures[st.peek()]) {
                int idx = st.pop();
                res[idx] = i - idx;
            } 
            st.push(i);
        }
        return res;
    }
}