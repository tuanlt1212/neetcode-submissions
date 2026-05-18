class Solution {
    func hasDuplicate(_ nums: [Int]) -> Bool {
        var dict: [Int: Int] = [:]

        for num in nums {
            dict[num, default: 0] += 1
        }

        for v in dict.values {
            if v > 1 {
                return true
            }
        }

        return false
    }
}
