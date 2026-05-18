class Solution {
    func isPalindrome(_ s: String) -> Bool {
        let arr = Array(s.lowercased())
        var l = 0
        var r = arr.count - 1

        while l < r {
            while l < r && !isValid(arr[l]) {
                l += 1
            }

            while l < r && !isValid(arr[r]) {
                r -= 1
            }

            if arr[l] != arr[r] {
                return false
            }

            l += 1
            r -= 1
        }

        return true
    }

    func isValid(_ char: Character) -> Bool {
        return (char >= "a" && char <= "z") || (char >= "0" && char <= "9")
    }
}
