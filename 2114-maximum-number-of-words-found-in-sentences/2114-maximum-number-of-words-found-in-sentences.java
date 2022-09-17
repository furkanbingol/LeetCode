class Solution {
    public int mostWordsFound(String[] sentences) {
        int i,j,max = 0;
        for(i = 0; i < sentences.length; i++)
        {
            String[] str = sentences[i].split(" ");
            for(j = 0; j < str.length; j++);
            if(j > max)
                max = j;
        }
        return max;
    }
}