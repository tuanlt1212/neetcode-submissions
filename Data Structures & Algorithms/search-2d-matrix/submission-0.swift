class Solution {
    func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
        for arr in matrix {
            var l = 0
            var r = arr.count - 1 

            while l <= r {
                let mid = l + (r-l)/2
                let val = arr[mid]
                if val == target {
                    return true
                } else if val > target {
                    r = mid - 1
                } else {
                    l = mid + 1
                }
            }
        }
        return false
    }
}
