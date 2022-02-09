class Solution {
    func permute(_ nums: [Int]) -> [[Int]] {
        var output : [[Int]] = []
        var input = nums
        
        func backtrack(_ n: Int, _ first: Int) {
            if first == n {
                output.append(input)
            }
            for i in first ..< n {
                input.swapAt(first, i)
                backtrack(n, first + 1)
                input.swapAt(first, i)
            }
        }
        
        backtrack(nums.count, 0)
        return output
    }
}
