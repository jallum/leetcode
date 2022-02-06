class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        var existing: Set<Int> = []
        for n in nums {
            guard !existing.contains(n) else {
                return true
            }
            existing.insert(n)
        }
        return false
    }
}
