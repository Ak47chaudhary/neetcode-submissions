
class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {

        var actualProd = 1
        var countZero = 0

        var ans = Array(repeating: 0, count: nums.count)

        for value in nums {
            if value == 0 {
                countZero += 1
            } else {
                actualProd *= value
            }
        }

        if countZero > 1 {
            return ans
        }

        for i in 0..<nums.count {
            if countZero == 1 {
                if nums[i] == 0 {
                    ans[i] = actualProd
                }
            } else {
                ans[i] = actualProd / nums[i]
            }
        }

        return ans
    }
}
