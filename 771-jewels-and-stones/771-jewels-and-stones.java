class Solution {
    public int numJewelsInStones(String jewels, String stones) {
        int[] alpha = new int[52];
        int num = 0;
        
        for(int i = 0; i < jewels.length(); i++){
            if(jewels.charAt(i) >= 'a' && jewels.charAt(i) <= 'z')
                alpha[jewels.charAt(i) - 'a'] = 1;
            else
                alpha[26 + jewels.charAt(i) - 'A'] = 1;
        }
        
        for(int i = 0; i < stones.length(); i++){
            if(stones.charAt(i) >= 'a' && stones.charAt(i) <= 'z'){
                if(alpha[stones.charAt(i) - 'a'] == 1)
                    num++;
            }
            else{
                if(alpha[26 + stones.charAt(i) - 'A'] == 1)
                    num++;
            }
        }
        return num;
    }
}