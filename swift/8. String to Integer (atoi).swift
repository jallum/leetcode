class Solution {
    func myAtoi(_ s: String) -> Int {
        var v = 0
        var negative = false
        var started = false
        for (i, c) in s.enumerated() {
            guard let digit = c.wholeNumberValue else {
                if started {
                    break
                }
                if c == "-" {
                    negative = true
                    started = true
                } else if c == "+" {
                    started = true 
                } else if c == " " {
                    /**/
                } else {
                    break
                }
                continue
            }
            
            started = true

            v = (v * 10) + digit
            if v > Int(Int32.max) {
                break
            }
        }
        if negative {
            v *= -1
        }
    
        if v > Int32.max {
            return Int(Int32.max)
        } else if v < Int32.min {
            return Int(Int32.min)
        } else {
            return v
        }
    }
}
