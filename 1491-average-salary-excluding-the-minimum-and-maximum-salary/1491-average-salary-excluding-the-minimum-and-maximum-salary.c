double average(int* salary, int salarySize){
    double sum = salary[0];
    int min = salary[0],max = salary[0];
    
    for(int i = 1; i < salarySize; i++){
        if(salary[i] < min)
            min = salary[i];
        if(salary[i] > max)
            max = salary[i];
        sum += salary[i];
    }
    sum -= (max + min);
    return (sum/(salarySize-2));
}