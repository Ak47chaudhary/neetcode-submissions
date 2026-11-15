class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
         var i = 0
         var j = 0
         while j < nums.count{
            if nums[j] == val{
                j += 1
            }else{
                nums[i] = nums[j]
                i += 1
                j += 1
            }
         }
         return i
    }
}
