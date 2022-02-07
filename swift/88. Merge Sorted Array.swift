class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        guard nums2.count > 0 else {
            return
        }
        var i = nums1.count - 1
        var j = m - 1
        var jv = j < 0 ? Int.min : nums1[j]
        var k = n - 1
        var kv = k < 0 ? Int.min : nums2[k]
        repeat {
            while i >= 0 && jv >= kv {
                nums1[i] = jv
                j -= 1
                jv = j < 0 ? Int.min : nums1[j]

                i -= 1
            }
            while i >= 0 && jv <= kv {
                nums1[i] = kv
                k -= 1
                print(k)
                kv = k < 0 ? Int.min : nums2[k]
                
                i -= 1
            }
        } while i >= 0
    }
} 
