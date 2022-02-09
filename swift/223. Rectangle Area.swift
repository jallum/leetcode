class Solution {
    func computeArea(_ ax1: Int, _ ay1: Int, _ ax2: Int, _ ay2: Int, _ bx1: Int, _ by1: Int, _ bx2: Int, _ by2: Int) -> Int {
        let cx1 = max(ax1, bx1)
        let cx2 = min(ax2, bx2)
        let cy1 = max(ay1, by1)
        let cy2 = min(ay2, by2)
        
        return (ax2 - ax1) * (ay2 - ay1) + (bx2 - bx1) * (by2 - by1) - max(cx2 - cx1, 0) * max(cy2 - cy1, 0)
    }
}
