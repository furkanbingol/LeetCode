class Solution {
    public boolean searchMatrix(int[][] matrix, int target) {
        int len = matrix[0].length;
        int l = 0, r = len-1, mid;
        int i = 0;
        
        while(l <= r && i < matrix.length){
            if(matrix[i][r] < target)
                i++;
            else{
                mid = (l+r)/2;
                if(matrix[i][mid] == target)
                    return true;
                else if(matrix[i][mid] < target)
                    l++;
                else
                    r--;
            }
        }
        return false;
    }
}