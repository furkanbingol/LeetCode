class Solution {
    public boolean uniqueOccurrences(int[] arr) {
        HashSet<Integer> hash = new HashSet<>();
        Arrays.sort(arr);
        int occur = 1;

        for(int i = 1; i < arr.length; i++) {
            if (arr[i] == arr[i - 1]){
                occur++;
                if (i == arr.length-1) {
                    if (hash.contains(occur))
                        return false;
                }
            }
            else{
                if (hash.contains(occur))
                    return false;
                hash.add(occur);
                if (i == arr.length-1) {
                    if (hash.contains(1))
                        return false;
                }
                occur = 1;
            }
        }
        return true;
    }
}