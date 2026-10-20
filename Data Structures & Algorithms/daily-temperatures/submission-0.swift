class Solution {
    func dailyTemperatures(_ temperatures: [Int]) -> [Int] {
        var n = temperatures.count
        var stack = [Int]()
        var result = Array(repeating: 0, count: n)
        for i in stride(from: n - 1, through:  0, by: -1){
            while !stack.isEmpty && temperatures[i] >= temperatures[stack.last!]{
                stack.removeLast()
            }
            if !stack.isEmpty{
                result[i] = stack.last! - i
            }else{
                result[i] = 0
            }
            stack.append(i)
        }
        return result
    }
}