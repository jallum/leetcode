class Solution {
  func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var indexesByValue: [Int:Int] = [:]
    for (ix, x) in nums.enumerated() {
      if let iy = indexesByValue[target - x] {
        return [iy, ix]
      }
      indexesByValue[x] = ix
    }
    return []
  }
}
