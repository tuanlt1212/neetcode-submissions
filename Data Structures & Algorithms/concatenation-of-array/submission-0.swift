class Solution {
    func getConcatenation(_ nums: [Int]) -> [Int] {
        let n = nums.count
        var ans = Array(repeating: 1, count: n*2)

        for i in nums.indices {
            ans[i] = nums[i]
            ans[i+n] = nums[i]
        }

        return ans
    }
}
