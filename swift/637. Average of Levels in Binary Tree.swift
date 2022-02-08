/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */
class Solution {
    func averageOfLevels(_ root: TreeNode?) -> [Double] {
        class Memo {
            var sum: Int
            var count: Int
            
            init(sum: Int, count: Int) {
                self.sum = sum
                self.count = count
            }
            
            func add(value: Int) {
                self.sum += value
                self.count += 1
            }
        }
        
        var memos : [Memo] = []
        depthFirstWalk(root!, 0) { (level, node) in
            while level >= memos.count {
                memos.append(Memo(sum: 0, count: 0))
            }
            memos[level].add(value: node.val)
        }
        return memos.map { Double($0.sum) / Double($0.count) }
    }
    
    func depthFirstWalk<T>(_ node: TreeNode, _ level: Int, _ visitor: (Int, TreeNode) -> T) {
        if let l = node.left {
            depthFirstWalk(l, level+1, visitor)
        }
        if let r = node.right {
            depthFirstWalk(r, level+1, visitor)
        }
        visitor(level, node)
    } 
}
