class Solution {
    public int[] minOperations(String boxes) {
        List<Integer> list = new ArrayList<>();
        int[] answer = new int[boxes.length()];

        for(int i = 0; i < boxes.length(); i++){
            if(boxes.charAt(i) == '1')
                list.add(i);
        }

        for(int i = 0; i < boxes.length(); i++){
            int total = 0;
            for(int j = 0; j < list.size(); j++)
                total += Math.abs(i - list.get(j));
            answer[i] = total;
        }
        return answer;
    }
}