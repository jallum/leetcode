class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        guard nums.count > 0 else {
            return 0
        }
        var maxSum = Int.min
        let m = nums.count
        for i in 0 ..< m {
            var sum = 0
            for j in i ..< m {
                sum += nums[j]
                maxSum = max(sum, maxSum)
            }
        }
        return maxSum
    }
}
