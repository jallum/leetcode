class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var x = 0;
        var y = nums.count - 1
        while y >= x {
            let w = x + (y - x) >> 2
            let d = nums[w] - target
            if d == 0 { 
                return w
            } else if d < 0 {
                x = w + 1
            } else {
                y = w - 1
            }
        }
        return -1
    }
}
