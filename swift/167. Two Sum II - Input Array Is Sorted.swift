class Solution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        var indexesBySum: [Int:Int] = [:]
        for (i, n) in numbers.enumerated() {
            if let j = indexesBySum[n] {
                return [j + 1, i + 1]                
            }
            indexesBySum[target - n] = i
        }
        return []
    }
}
