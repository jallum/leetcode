class Solution {
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        let a = (nums1 + nums2).sorted(by: <)
        let c = a.count
        if c & 1 == 1 {
            return Double(a[c >> 1])
        } else {
            return Double((a[(c >> 1) - 1] + a[c >> 1])) / 2
        }
    }
}
