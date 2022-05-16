int findCenter(int** edges, int edgesSize, int* edgesColSize){
    int i,j;
    
    for(i = 0; i < edgesSize-1; i++){
        for(j = 0; j < *edgesColSize; j++){
            if(j == 0){
                if(edges[i][j] == edges[i+1][j] || edges[i][j] == edges[i+1][j+1])
                    return edges[i][j];
            }
            else{
                if(edges[i][j] == edges[i+1][j-1] || edges[i][j] == edges[i+1][j])
                    return edges[i][j];
            }
        }
    }
    return 0;
}