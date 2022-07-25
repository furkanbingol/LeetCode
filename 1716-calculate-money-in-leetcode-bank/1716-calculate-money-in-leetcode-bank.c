int totalMoney(int n){
    int money = 0,i = 0,add = 1;
    
    while(i < n){
        if(i % 7 == 0)
            add = (i / 7) + 1;
        money += add;
        add++;
        i++;
    }
    return money;
}