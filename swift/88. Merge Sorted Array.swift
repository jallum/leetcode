class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var i = m + n - 1
        var j = m - 1
        var k = n - 1
        while i >= 0 && k >= 0 {
            if j >= 0 && nums1[j] > nums2[k] {
                nums1[i] = nums1[j]
                j -= 1
            } else {
                nums1[i] = nums2[k]
                k -= 1
            }
            i -= 1
        }
    }
} 
