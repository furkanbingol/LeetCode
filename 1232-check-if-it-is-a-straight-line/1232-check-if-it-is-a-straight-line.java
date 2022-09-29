class Solution {
    public boolean checkStraightLine(int[][] coordinates) {
        int x,y;
        x = coordinates[1][0] - coordinates[0][0];
        y = coordinates[1][1] - coordinates[0][1];
        for(int i = 2; i < coordinates.length; i++){
            if(x * (coordinates[i][1] - coordinates[0][1]) != y * (coordinates[i][0] - coordinates[0][0])) 
                return false;
        }
        return true;
    }
}