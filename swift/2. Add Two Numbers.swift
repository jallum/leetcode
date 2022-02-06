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
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var i1 = l1
        var i2 = l2

        var head: ListNode? = nil
        var tail: ListNode? = nil
        var carry: Int = 0
        
        repeat {
            let x = i1?.val ?? 0
            let y = i2?.val ?? 0

            i1 = i1?.next
            i2 = i2?.next

            var digit = x + y + carry;
            if digit > 9 {
                carry = 1
                digit -= 10
            } else {
                carry = 0
            }

            let next = ListNode(digit, nil)
            if let tail = tail {
                tail.next = next
            } else {
                head = next
            }          
            tail = next
        } while (i1 != nil || i2 != nil)
        
        if (carry > 0) {
            tail!.next = ListNode(carry, nil)
        }
      
        return head;
    }
}
