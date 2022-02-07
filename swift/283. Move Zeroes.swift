class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        var j = 0
        for n in nums where n != 0 {
            nums[j] = n
            j += 1
        }
        while j < nums.count {
            nums[j] = 0
            j += 1
        }
    }
}
