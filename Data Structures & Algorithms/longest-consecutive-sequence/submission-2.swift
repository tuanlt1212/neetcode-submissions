class Solution {
    func longestConsecutive(_ nums: [Int]) -> Int {

        var set = Set(nums)
        var res = 0
        for i in nums.indices {
            if !set.contains(nums[i]-1) {
                var curr = nums[i]
                var count = 1
                while set.contains(curr+1) {
                    curr += 1
                    count += 1
                }
                res = max(res, count)
            }
        }
        return res
    }
}


