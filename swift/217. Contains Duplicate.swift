class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        var counts: [Int:Int] = [:]
        for n in nums {
            guard counts[n] == nil else {
                return true
            }
            counts[n] = 1
        }
        return false
    }
}
