class Solution {
    func longestConsecutive(_ nums: [Int]) -> Int {

        if nums.isEmpty {
            return 0
        }
        
        var freq: [Int: Int] = [:]

        for num in nums {
            freq[num, default: 0] += 1
        }

        var result = 1

        for i in nums.indices {
            var num = nums[i]
            var prev = freq[num-1]

            while freq[num-1] != nil {
                num -= 1
            }

            var count = 1

            while freq[num+1] != nil {
                count += 1
                num += 1
            }

            result = max(result, count)


        }
        return result
    }
}

