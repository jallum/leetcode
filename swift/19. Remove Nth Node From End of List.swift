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
        let d : ListNode? = ListNode(0, head)
        var f = d
        var s = d

        for i in 0 ..< n {
            f = f?.next
        }
        
        while let fn = f?.next {
            f = fn
            s = s?.next
        }

        s?.next = s?.next?.next
        
        return d?.next
    }
}
