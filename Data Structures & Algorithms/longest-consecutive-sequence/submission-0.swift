class Solution {
   func longestConsecutive(_ nums: [Int]) -> Int {
    let numbers = Set(nums)
    var longest = 0
    
    for number in numbers {
        // Only start counting if this is the beginning
        // of a consecutive sequence.
        if !numbers.contains(number - 1) {
            var current = number
            var length = 1
            
            while numbers.contains(current + 1) {
                current += 1
                length += 1
            }
            
            longest = max(longest, length)
        }
    }
    
    return longest
}
}
