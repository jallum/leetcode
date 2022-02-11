class Solution {
    func isValidSudoku(_ board: [[Character]]) -> Bool {
        for x in 0 ..< board[0].count {
            if !check(digits: extract(col:x, from:board)) {
                return false
            }
        }

        for y in 0 ..< board.count {
            if !check(digits: extract(row:y, from:board)) {
                return false
            }
        }
        
        for x in 0 ..< 3 {
            for y in 0 ..< 3 {
                if !check(digits:extract(squareAtX:x, y:y, from:board)) {
                    return false
                }
            }
        }
        
        return true
    }
    
    func check(digits:[Character]) -> Bool {
        let bitByChar = [Character:Int](uniqueKeysWithValues: "123456789".map { ($0, 1 << $0.wholeNumberValue! )})
        var bits = 0
        for c in digits {
            if let bit = bitByChar[c] {
                if bits & bit == bit {
                    return false // already present
                }
                bits |= bit
            }      
        }
        return true
    }
    
    func extract(row: Int, from board: [[Character]]) -> [Character] {
        return board[row]
    }
    
    func extract(col:Int, from board: [[Character]]) -> [Character] {
        return board.map { $0[col] }
    }
    
    func extract(squareAtX x: Int, y: Int, from board: [[Character]]) -> [Character] {
        var result : [Character] = []
        for x in (3 * x) ..< (3 * x) + 3 {
            for y in (3 * y) ..< (3 * y) + 3 {
                result.append(board[y][x])
            }
        }
        return result
    }
}
