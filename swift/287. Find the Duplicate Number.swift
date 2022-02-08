class Solution {
    func findDuplicate(_ nums: [Int]) -> Int {
        var memo = [Bool](repeating: false, count: nums.count)
        for k in nums where k > 0 && k <= nums.count {
            if memo[k-1] {
                return k
            }
            memo[k-1] = true
        }
        return 0
    }
}
