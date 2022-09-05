class Solution {
    public int maximumWealth(int[][] accounts) {
        int max = 0, tmp;
        
        for(int i = 0; i < accounts.length; i++){
            tmp = 0;
            for(int j = 0; j < accounts[i].length; j++)
                tmp += accounts[i][j];
            if(tmp > max) 
                max = tmp; 
        }
        return max;
    }
}