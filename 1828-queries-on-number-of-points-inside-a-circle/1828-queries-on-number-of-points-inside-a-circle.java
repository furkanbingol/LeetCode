class Solution {
    public int[] countPoints(int[][] points, int[][] queries) {
        List<Integer> list = new ArrayList<>();
        int count = 0;

        for(int i = 0; i < queries.length; i++){
            for(int j = 0; j < points.length; j++){
                double diff = Math.sqrt(Math.pow(points[j][0] - queries[i][0], 2) +
                        Math.pow(points[j][1] - queries[i][1], 2));
                double res = (double)queries[i][2];
                if(diff <= res)
                    count++;
            }
            list.add(count);
            count = 0;
        }
        int[] arr = new int[list.size()];
        for(int i = 0; i < list.size(); i++)
            arr[i] = list.get(i);
        return arr;
    }
}