class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        var dic = [Int:Int]()
        for value in nums{
            dic[value, default: 0] += 1
            if dic[value]! > (nums.count / 2){
                return value 
            }
        }
        return 0
    }
}
