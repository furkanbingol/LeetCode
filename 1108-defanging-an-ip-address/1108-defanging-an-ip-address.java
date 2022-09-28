class Solution {
    public String defangIPaddr(String address) {
        String str = "";
        for(int i = 0; i < address.length(); i++){
            if(address.charAt(i) == '.')
                str += "[.]";
            else
                str += address.charAt(i);
        }
        return str;
    }
}