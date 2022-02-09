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
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        guard var w = head else {
            return nil
        }
        guard w.next != nil && n > 0 else {
            return nil
        }

        var x = n
        var pn: ListNode? = head
        while let nw = w.next {
            if x > 0 {
                x -= 1
            } else {
                pn = pn?.next
            }
            w = nw
        }

        if x > 0 {
            return pn?.next
        }
        if let pn = pn, let pnn = pn.next {
            pn.next = pnn.next
            return head
        } else {
            pn?.next = nil
            return pn
        }
    }
}
