class Solution {
    func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        let a = nums1.sorted()
        let b = nums2.sorted()
        
        var x = 0, xm = a.count
        var y = 0, ym = b.count
        
        var r: [Int] = []
        
        while x < xm && y < ym {
            if a[x] == b[y] {
                r.append(a[x])
                x += 1
                y += 1
            } else if a[x] > b[y] {
                y += 1
            } else {
                x += 1
            }
        }
        
        return r
    }
}
