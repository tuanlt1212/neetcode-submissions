class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        for i in nums.indices {
            if nums[i] == val {
                nums[i] = -1
            }
        }
        
        
        nums = nums.sorted(by: {$0 > $1})
        return nums.filter({ $0 != -1 }).count

        
    }
}
/*
0 1 2 2 3 0 4 2

0 0 1 2 2 2 3 4

0 0 1 4 2 2 3
*/