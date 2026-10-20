class MinStack {
    var stack = [Int]()
    init() {
        stack = [Int]()
    }

    func push(_ val: Int) {
        stack.append(val)
    }

    func pop() {
        if !stack.isEmpty{
            stack.removeLast()
        }
    }

    func top() -> Int {
        if !stack.isEmpty{
            return stack.last!
        }
        return -1
    }

    func getMin() -> Int {
        if !stack.isEmpty{
            return stack.min()!
        }
        return -1
    }
}