class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict: [Int: Int] = [:]

        for i in nums.indices {
            let need = target - nums[i]

            if let index = dict[need] {
                return [index, i]
            }

            dict[nums[i]] = i
        }

        return []
    }
}
