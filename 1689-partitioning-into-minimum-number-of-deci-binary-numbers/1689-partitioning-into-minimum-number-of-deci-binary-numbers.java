class Solution {
    public int minPartitions(String n) {
        int answer = 0;
        for(int i = 0; i < n.length(); i++)
            answer = Math.max(n.charAt(i)-'0', answer);
        return answer;
    }
}