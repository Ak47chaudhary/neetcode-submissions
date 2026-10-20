class Solution {
    func isValid(_ s: String) -> Bool {
        var stack  = [Character]()
        for ch in s{
            if ch == "("{
                stack.append(")")
            }else if ch == "{"{
                stack.append("}")
            }else if ch == "["{
                stack.append("]")
            }else if stack.isEmpty || stack.last != ch{
                return false
            }else{
                stack.removeLast()
            }
        }
        return stack.isEmpty ? true : false
    }
}