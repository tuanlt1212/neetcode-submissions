class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var left = 0
        var arr = Array(s)
        var count = 0
        var tmp: [Character] = []
        var res = 0
        for right in arr.indices {
            let char = arr[right]
            while tmp.contains(char) {
                print(tmp)
                tmp.removeFirst()
                left += 1
                count -= 1
            }
            tmp.append(char)
            count += 1
            res = max(res, count)


        }

        return res
    }
}
