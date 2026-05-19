class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        var l = 0
        for i in nums.indices {
            if nums[i] != val {
                nums[l] = nums[i]
                l += 1
            }
        }
        return l
    }
}