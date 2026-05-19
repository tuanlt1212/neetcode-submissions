class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        var prefix = strs[0]

        for i in 1..<strs.count {
            while !prefix.isEmpty && !strs[i].contains(prefix){
                prefix.removeLast()
            }
        }

        return prefix
    }
}
