class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        guard nums.count > 0 else {
            return Int.min
        }
        var maxSum = Int.min
        var sum = 0
        for i in 0 ..< nums.count {
            sum = max(nums[i], sum + nums[i])
            maxSum = max(sum, maxSum)
        }
        return maxSum
    }
}
