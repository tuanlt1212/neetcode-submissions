class Solution {
    func isValid(_ s: String) -> Bool {
        
        var stack: [Character] = []

        for char in s {
            if isOpenBracket(char) {
                stack.append(char)
            } else {
                if stack.isEmpty {
                    return false
                }
                let recentOpenBracket = stack.removeLast()
                if getValidBracket(recentOpenBracket) != char {
                    return false
                }
            }
        }
        return stack.isEmpty
    }

    func getValidBracket(_ char: Character) -> Character {
        switch char {
            case "{": return "}"
            case "(": return ")"
            case "[": return "]"
            default: return " "
        }
    }

    func isOpenBracket(_ char: Character) -> Bool {
        return char == "{" || char == "(" || char == "["
    }
}
