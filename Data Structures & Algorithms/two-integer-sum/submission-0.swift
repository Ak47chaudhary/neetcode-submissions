class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dic = [Int:Int]()
        for i in 0 ..< nums.count{
            var ans = target - nums[i]
            if dic[ans] == nil{
                dic[nums[i]] = i
            }else{
                return [dic[ans]!,i]
            }
        }
        return []
    }
}
