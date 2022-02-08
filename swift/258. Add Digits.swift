class Solution {
    func addDigits(_ num: Int) -> Int {
        guard num > 9 else {
            return num
        }
        var sum = 0
        var num = num
        repeat {
            let digit = num % 10
            sum += digit
            num /= 10
        } while num > 0
        return addDigits(sum)
    }
}
