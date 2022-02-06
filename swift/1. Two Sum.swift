class Solution {
  func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    for (ix, x) in nums.enumerated() {
      for (iy, y) in nums.enumerated() where ix < iy {
        if x + y == target {
          return [ix, iy];
        }
      }
    }
    return [];
  }
}
