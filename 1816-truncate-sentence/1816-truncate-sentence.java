class Solution {
    public String truncateSentence(String s, int k) {
        String[] str = s.split(" ");
        StringBuilder res = new StringBuilder();
        int len = str.length;

        if(k == len)
            return s;
        for(int i = 0; i < len; i++)
        {
            if(i + 1 == k)
            {
                for(int j = 0; j < k; j++)
                {
                    if(j == k-1)
                        res.append(str[j]);
                    else
                        res.append(str[j] + " ");
                }
            }
        }
        return res.toString();
    }
}