class Solution {
    func evalRPN(_ tokens: [String]) -> Int {
        var stack: [Int] = []

        for char in tokens {
            if isNumber(char) {
                stack.append(Int(char)!)
                print(stack.last!)
            } else {
                if stack.count >= 2 {
                    let b = stack.removeLast()
                    let a = stack.removeLast()
                    stack.append(getResult(a,b,char))
                }
            }
        }

        return stack.last!
        
    }
    
    func isNumber(_ char: String) -> Bool {
            return char != "+" && char != "-" && char != "*" && char != "/"
        }

    func getResult(_ a: Int, _ b: Int, _ c: String) -> Int {
        let a = a
        let b = b
        switch c {
            case "+": return a+b
            case "-": return a-b
            case "*": return a*b
            case "/": return a/b
            default: return 0
        }
    }
}
