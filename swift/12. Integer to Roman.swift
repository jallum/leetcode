class Solution {
    let table: [(Int,String)] = [
        (1000, "M"), (900, "CM"), (500, "D"), (400, "CD"),
        ( 100, "C"), ( 90, "XC"), ( 50, "L"), ( 40, "XL"),
        (  10, "X"), (  9, "IX"), (  5, "V"), (  4, "IV"),
        (   1, "I") 
    ]

    func intToRoman(_ num: Int) -> String {
        var s = ""
        var x = num
        for (n, d) in table {
            while x >= n {
                s += d
                x -= n
            }
        }
        return s
    }
}
