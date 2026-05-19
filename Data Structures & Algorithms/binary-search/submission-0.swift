class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var l = 0
        var r = nums.count - 1

        while l <= r {
            let mid = l + (r - l)/2
            let val = nums[mid]
            if val == target {
                return mid
            } else if val > target {
                r = mid - 1
            } else {
                l = mid + 1
            }
        }
        return -1
    }
}
