//The Manhattan distance between two points (x1, y1) and (x2, y2) is abs(x1 - x2) + abs(y1 - y2)

int nearestValidPoint(int x, int y, int** points, int pointsSize, int* pointsColSize){
    int i,diff = INT_MAX;
    int minDist = -1;
        
    for(i = 0; i < pointsSize; i++){
        if(x == points[i][0] || y == points[i][1]){
            if(abs(x - points[i][0]) + abs(y - points[i][1]) < diff){
                diff = abs(x - points[i][0]) + abs(y - points[i][1]);
                minDist = i;
            }
        }
    }
    return minDist;
}