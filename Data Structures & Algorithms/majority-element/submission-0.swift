class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        var dict: [Int: Int] = [:]

        for num in nums {
            dict[num, default: 0] += 1
        }

        return dict.sorted(by: {$0.value > $$1.value}).first?.key ?? 0
    }
}
