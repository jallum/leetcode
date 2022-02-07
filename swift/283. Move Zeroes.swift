class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        var i = 0
        var j = 0
        while i < nums.count {
            if nums[i] != 0 {
                nums[j] = nums[i]
                j += 1
            }
            i += 1
        }
        while j < nums.count {
            nums[j] = 0
            j += 1
        }
    }
}
