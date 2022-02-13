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
    func reverseList(_ head: ListNode?) -> ListNode? {
        guard var newHead = head else {
            return nil
        }
        
        func reverse(_ n: ListNode) -> ListNode? {
            guard let nn = n.next else {
                newHead = n
                return n
            }
            let n1 = reverse(nn)
            n1?.next = n
            n.next = nil
            return n
        }
        
        reverse(newHead)
        return newHead
    }
}
