class Solution {
    func capitalizeTitle(_ title: String) -> String {
        let array = title.capitalized.split(separator: " ")
        var res = [String]()
 
        for i in array {
            res += i.count <= 2 ? [i.lowercased()] : [String(i)]
        }

        return res.joined(separator: " ")
    }
}