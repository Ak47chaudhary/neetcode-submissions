class Solution {
    func evalRPN(_ tokens: [String]) -> Int {
        var stack = [Int]()
        for ch in tokens{
            if let value = Int(ch){
                stack.append(value)
            }else{
                var second = stack.last
                stack.removeLast()
                var first = stack.last
                stack.removeLast()
                if ch == "*"{
                    var value = first! * second!
                    stack.append(value)
                }else if ch == "-"{
                    var value = first! - second!
                    stack.append(value)
                }else if ch == "/"{
                    var value = first! / second!
                    stack.append(value)
                }else if ch == "+"{
                    var value = first! + second!
                    stack.append(value)
                }
            }
        }
        return !stack.isEmpty ? stack.last! : 0
    }
}
