class MinStack {

    var stack: [Int] = []
    var minStack: [Int] = []

    init() {

    }

    func push(_ val: Int) {
        stack.append(val)
        if minStack.isEmpty {
            minStack.append(val)
        } else {
            minStack.append(min(val, minStack.last!))
        }
        
    }

    func pop() {
        stack.removeLast()
        minStack.removeLast()
    }

    func top() -> Int {
        return stack[stack.count-1]
    }

    func getMin() -> Int {
        return minStack.last!
    }
}
