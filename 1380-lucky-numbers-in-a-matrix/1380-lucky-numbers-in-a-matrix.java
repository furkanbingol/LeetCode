class Solution {
    public List<Integer> luckyNumbers (int[][] matrix) {
        List<Integer> list = new ArrayList<>();
        int[] minRows = new int[matrix.length];

        int i,j,min,min_index;
        for(i = 0; i < matrix.length; i++){
            min = matrix[i][0];
            min_index = 0;
            for(j = 1; j < matrix[i].length; j++){
                if(matrix[i][j] < min){
                    min = matrix[i][j];
                    min_index = j;
                }
            }
            minRows[i] = min_index;
        }

        for(i = 0; i < matrix.length; i++){
            j = minRows[i];
            int tmp = 0;
            while (tmp < matrix.length) {
                if (tmp != i) {
                    if (matrix[tmp][j] > matrix[i][j])
                        break;
                }
                tmp++;
            }
            if (tmp == matrix.length)
                list.add(matrix[i][j]);
        }
        return list;
    }
}