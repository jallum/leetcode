class Solution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        var l = 0, h = numbers.count - 1
        var sum = numbers[l] + numbers[h]
        while sum != target {
            if sum < target {
                l += 1
            } else {
                h -= 1
            }
            sum = numbers[l] + numbers[h]
        }
        return [l + 1, h + 1]
    }
}
