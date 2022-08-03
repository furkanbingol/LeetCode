int specialArray(int* nums, int numsSize){
    int l=0,h=1000,mid,count;
    
    while(l <= h){
        mid = (l + h)/2;  
        count = 0;
        for(int i = 0; i < numsSize; i++){
            if(nums[i] >= mid) 
                count++;    
        }
        if(count == mid) 
            return count;
        if(count > mid) 
            l = mid+1;
        else 
            h = mid-1;   
    }
    return -1;
}