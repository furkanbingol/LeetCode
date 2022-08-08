typedef struct {
    int bigSize;
    int mediumSize;
    int smallSize;
} ParkingSystem;

ParkingSystem* parkingSystemCreate(int big, int medium, int small) {
    ParkingSystem *obj = (ParkingSystem*)malloc(sizeof(ParkingSystem));
    obj->bigSize = big;
    obj->mediumSize = medium;
    obj->smallSize = small;
    return obj;
}

bool parkingSystemAddCar(ParkingSystem* obj, int carType) {
    if(carType == 1){
        if(!obj->bigSize)
            return false;
        obj->bigSize--;
        return true;
    }
    else if(carType == 2){
        if(!obj->mediumSize)
            return false;
        obj->mediumSize--;
        return true;
    }
    //carType == 3
    if(!obj->smallSize)
        return false;
    obj->smallSize--;
    return true;
}

void parkingSystemFree(ParkingSystem* obj) {
    free(obj);
}

/**
 * Your ParkingSystem struct will be instantiated and called as such:
 * ParkingSystem* obj = parkingSystemCreate(big, medium, small);
 * bool param_1 = parkingSystemAddCar(obj, carType);
 
 * parkingSystemFree(obj);
*/