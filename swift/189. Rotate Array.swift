class Solution {
    func rotate(_ nums: inout [Int], _ k: Int) {
        guard nums.count > 1 else {
            return
        }
        let mk = k % nums.count
        let m = nums.count - mk
        let n = nums[m...] + nums[0..<m]
        nums = Array(n)
    }
} 
