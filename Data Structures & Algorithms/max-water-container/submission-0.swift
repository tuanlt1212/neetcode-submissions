class Solution {
    func maxArea(_ heights: [Int]) -> Int {
        var l = 0
        var r = heights.count - 1
        var res = 0

        while l < r {
            res = max(res, min(heights[l], heights[r]) * (r-l))
            if heights[l] < heights[r] {
                l += 1
            } else {
                r -= 1
            }
        }

        return res
    }
}
