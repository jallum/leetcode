
let grid = [
    [23, 45,  7, 84, 92],
    [ 7, 34, 18, 96, 46],
    [64, 82,  5, 42, 91],
    [ 4, 34,  7,  4, 34],
    [ 1,  1,  1,  1,  1]
]

typealias Coordinate = (x:Int, y:Int)

func magicSumThing(_ grid: [[Int]]) -> [[Int]] {
    let maxValue = Int(Int32.max)
    let xm = grid[0].count
    let ym = grid.count
    
    func inGrid(_ x:Int, _ y: Int) -> Bool {
        return x >= 0 && x < xm && y >= 0 && y < ym
    }
    
    let directions : [Coordinate] = [ 
        (0, -1),  
        (0, +1),
        (+1, 0)
    ]
    
    var s: [Coordinate] = (0 ..< ym).map { (0, $0) }

    var dis : [[Int]] = (0 ..< ym).map { _ in [Int](repeating: maxValue, count: xm) }
    for (x, y) in s {
        dis[y][x] = grid[y][x]
    }
    
    while let k = s.first {
        s.removeFirst()
        
        for d in directions {
            let x = k.x + d.x
            let y = k.y + d.y
            
            if !inGrid(x,y) {
                continue    
            }

            let distance = dis[k.y][k.x] + grid[y][x]
            if dis[y][x] > distance {
                if maxValue != dis[y][x] {
                    s.removeAll { $0 == (x,y) }
                }
                dis[y][x] = distance
                s.append((x, y))
            }
        }
    }
    
    return dis
}

func minimumPath(_ grid: [[Int]]) -> Int {
    var minSum = Int.max
    for sum in magicSumThing(grid) {
        minSum = min(minSum, sum.last!)
    }
    return minSum
}

print(minimumPath(grid))
