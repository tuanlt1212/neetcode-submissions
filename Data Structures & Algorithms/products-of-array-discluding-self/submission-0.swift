class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        let n = nums.count
        var lArr = Array(repeating: 1, count: n)
        var rArr = Array(repeating: 1, count: n)

        for i in 1..<n {
            lArr[i] = lArr[i-1] * nums[i-1]
        }

        var p = n - 2
        while p >= 0 {
            rArr[p] = rArr[p+1] * nums[p+1]
            p -= 1
        }
        var res = Array(repeating: 1, count: n)
        for i in lArr.indices {
            res[i] = lArr[i] * rArr[i]
        }

        return res
    }
}
