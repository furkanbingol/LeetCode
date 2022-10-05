class Solution {
    public int countAsterisks(String s) {
        int ast = 0;
        int bar = 0;

        for(int i = 0; i < s.length(); i++){
            if(s.charAt(i) == '|') 
                bar++;
            else if(bar % 2 == 0){
                if(s.charAt(i) == '*')
                    ast++;
            }
        }
        return ast;
    }
}