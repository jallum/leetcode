/**
 * The knows API is defined in the parent class VersionControl.
 *     func isBadVersion(_ version: Int) -> Bool{}
 */

class Solution : VersionControl {
    func firstBadVersion(_ n: Int) -> Int {
        var i = 1
        var j = n
        while j >= i {
            let m = (j + i) >> 1
            if isBadVersion(m) {
                j = m - 1
            } else {
                i = m + 1
            }
        } 
        return i
    }
}
