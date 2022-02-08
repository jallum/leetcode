class Solution {
    func spellchecker(_ wordlist: [String], _ queries: [String]) -> [String] {
        var lookup_q1: [String:String] = [:]
        var lookup_q2: [String:String] = [:]
        var lookup_q3: [String:String] = [:]
        
        for word in wordlist {
            /* 1 */
            let q1 = word
            lookup_q1[q1] = word

            /* 2 */
            let q2 = String(q1.lowercased())
            if lookup_q2[q2] == nil {
                lookup_q2[q2] = word
            }
            
            /* 3 */
            let q3 = replaceVowels(in: q2)
            if lookup_q3[q3] == nil {
                lookup_q3[q3] = word
            }
        }
        
        return queries.map { 
            lookup_q1[$0]
             ?? lookup_q2[$0.lowercased()] 
             ?? lookup_q3[replaceVowels(in: $0.lowercased())] 
             ?? ""
        }
    }
    
    func replaceVowels(in word: String) -> String {
        let vowels = ["a", "e", "i", "o", "u"].map({Character($0)})
        return String(word.reduce("", { (prefix, char) -> String in  
            prefix + (vowels.contains(char) ? "*" : "\(char)")
        }))
    }
}
