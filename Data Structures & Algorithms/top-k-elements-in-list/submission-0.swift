class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var nums = nums.sorted()

        var dict: [Int: Int] = [:]

        for num in nums {
            dict[num, default: 0] += 1
        }

        print()

        return Array(dict.sorted(by: {$0.value > $1.value}).map{$0.key}.prefix(k))


    }
}
