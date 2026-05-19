class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var left = 0
        var arr = Array(s)
        var set = Set<Character>()
        var res = 0

        for right in arr.indices {
            while set.contains(arr[right]) {
                set.remove(arr[left])
                left += 1
            }
            set.insert(arr[right])
            res = max(res, right-left+1)
        }

        return res
    }
}
