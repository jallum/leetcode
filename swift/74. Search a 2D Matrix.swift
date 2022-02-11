class Solution {
    func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
        for r in matrix where target >= r.first! && target <= r.last! {
            if r.contains(target) {
                return true
            }
        }
        return false
    }
}
