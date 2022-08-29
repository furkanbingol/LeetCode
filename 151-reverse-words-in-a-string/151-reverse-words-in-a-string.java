class Solution {
    public String reverseWords(String s) {
        StringBuilder str = new StringBuilder();
        int count = 0;
        int len = s.length();

        for(int i = len-1; i >= 0; i--){
            if(s.charAt(i) != ' ')
                count++;
            else if(i != len-1 && s.charAt(i) == ' ' && s.charAt(i+1) != ' '){
                str.append(s, i+1, i+1+count);
                count = 0;
                str.append(' ');
            }
        }
        if(count != 0)  //for the last word
            str.append(s,0,count);  

        String ans = str.toString().trim();
        return ans;
    }
}