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
        var newHead: ListNode? = nil

        func _reverseList(_ node: ListNode?) -> ListNode? {
            guard let node = node else {
                return nil
            }
            guard let next = node.next else {
                newHead = node
                return node
            }
            let node1 = _reverseList(next)
            node1?.next = node
            node.next = nil
            return node
        }

        _reverseList(head)
        return newHead
    }
}
