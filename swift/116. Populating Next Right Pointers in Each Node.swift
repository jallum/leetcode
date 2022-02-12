/**
 * Definition for a Node.
 * public class Node {
 *     public var val: Int
 *     public var left: Node?
 *     public var right: Node?
 *	   public var next: Node?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.left = nil
 *         self.right = nil
 *         self.next = nil
 *     }
 * }
 */

class Solution {
    func connect(_ root: Node?) -> Node? {
        var nodesByLevel: [Node?] = []
        
        func df(_ node: Node, _ level: Int) {
            if nodesByLevel.count <= level {
                nodesByLevel.append(nil)
            }

            if let right = node.right { 
                df(right, level + 1)
            }
            if let left = node.left {
                df(left, level + 1)
            }

            node.next = nodesByLevel[level]
            nodesByLevel[level] = node
        }
        
        if let root = root {
            df(root, 0)
        }
        
        return root
    }
}
