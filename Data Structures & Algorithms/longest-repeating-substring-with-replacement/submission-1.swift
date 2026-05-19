class Solution {

    func characterReplacement(_ s: String, _ k: Int) -> Int {
        
        var left = 0
        var arr = Array(s)
        var result = 0
        var freq: [Character: Int] = [:]
        var maxFreq = 0

        for right in arr.indices {
            let char = arr[right]
            freq[char, default: 0] += 1
            maxFreq = max(maxFreq, freq[char]!)

            while (right-left+1) - maxFreq > k {
                freq[arr[left]]! -= 1
                left += 1
            }
            
            result = max(result, right-left+1)
        }
        return result
    }
}
