class Solution {
    public String toLowerCase(String s) {
        int i = 0;
        char[] str = new char[s.length()];
        
        while (i < s.length()){
            if (s.charAt(i) >= 'A' && s.charAt(i) <= 'Z')
                str[i] = (char)((int)s.charAt(i) + 32);
            else
                str[i] = s.charAt(i);
            i++;
        }
        String newStr = String.valueOf(str);
        return newStr;
    }
}