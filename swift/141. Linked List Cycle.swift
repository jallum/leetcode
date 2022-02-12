/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */

class Solution {
    func hasCycle(_ head: ListNode?) -> Bool {
        var s = head
        var f = head?.next
        while f !== s {
            if s == nil || f == nil {
                return false
            }
            f = f?.next?.next
            s = s?.next
        }
        return head != nil
    }
}
