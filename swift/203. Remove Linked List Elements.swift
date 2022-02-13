/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    func removeElements(_ head: ListNode?, _ val: Int) -> ListNode? {
        let ph = ListNode(-1, head)
        var p : ListNode? = ph
        while p != nil {
            if let n = p!.next, n.val == val {
                p!.next = n.next
            } else {
                p = p!.next
            }
        }
        return ph.next
    }
}
