class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        if s.count != t.count {
            return false
        }

        var freq1: [Character: Int] = [:]
        var freq2: [Character: Int] = [:]
        var arrS = Array(s)
        var arrT = Array(t)

        for char in arrS {
            freq1[char, default: 0] += 1
        }

        for char in arrT {
            freq2[char, default: 0] += 1
        }

        for k in freq1.keys {
            if freq1[k] != freq2[k] {
                return false
            }
        }

        return true
        
    }
}
