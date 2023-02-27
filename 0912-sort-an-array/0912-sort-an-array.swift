//Merge Sort
class Solution {
    func sortArray(_ nums: [Int])->[Int]{
        guard nums.count > 1 else { return nums }
        let median = nums.count / 2
        let left = sortArray(Array(nums[0..<median]))
        let right = sortArray(Array(nums[median..<nums.count]))
        return merge(left,right)
    }
    
    func merge(_ left:[Int], _ right:[Int])->[Int]{
        var arr:[Int] = []
        var i = 0
        var j = 0
        while i < left.count && j < right.count {
            if left[i] < right[j] {
                arr.append(left[i])
                i += 1
            }else{
                arr.append(right[j])
                j += 1
            }
        }
        while i < left.count {
            arr.append(left[i])
            i += 1
        }
        while j < right.count {
            arr.append(right[j])
            j += 1
        }
        return arr
    }
}


/*
//QuickSort

class Solution {
    func sortArray(_ nums: [Int]) -> [Int] {
        var sNums = nums
        helper(&sNums, 0, sNums.count - 1)
        return sNums   
    }
    
    func helper(_ arr: inout [Int], _ start:Int, _ end:Int){
        guard end > start else { return }
        let p = partition(&arr, start, end)
        helper(&arr, start , p-1);
        helper(&arr, p+1, end);
    }
    
    func partition(_ arr: inout [Int], _ start:Int, _ end:Int)->Int{
        let randIndex = Int.random(in: start...end)
        swap(&arr, randIndex, start)
        let pivot = arr[start]
        var smaller = start
        for j in start+1...end{
            if arr[j] < pivot{
                smaller += 1
                swap(&arr, smaller, j)
            }
        }
        swap(&arr, start, smaller)
        return smaller
    }
    
    func swap(_ arr: inout [Int], _ i:Int, _ j:Int){
        let item = arr[i]
        arr[i] = arr[j]
        arr[j] = item
    }
}
*/