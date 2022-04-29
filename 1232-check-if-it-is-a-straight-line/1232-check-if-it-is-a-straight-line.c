bool checkStraightLine(int** coordinates, int coordinatesSize, int* coordinatesColSize){
    int x,y;
    x = coordinates[1][0] - coordinates[0][0];
    y = coordinates[1][1] - coordinates[0][1];
    for(int i = 2 ; i < coordinatesSize ; i++){
        if(x*(coordinates[i][1] - coordinates[0][1]) != y*(coordinates[i][0] - coordinates[0][0])) 
            return false;
    }
    return true;
}