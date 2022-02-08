
class StringIterator {
    var iterator: String.Iterator
    var character: Character?
    var nextCharacter: Character?
    var count: Int = 0
    var finished: Bool = false
    
    init(_ compressedString: String) {
        self.iterator = compressedString.makeIterator()
        if let character = iterator.next() {
            self.nextCharacter = character
        } else {
            self.finished = true
        }
    }
    
    func next() -> Character {
        guard !finished else {
            return " "
        }
        guard self.count > 0 || hasNext() else {
            return " "
        }
        self.count -= 1
        return character!
    }
    
    func hasNext() -> Bool {
        guard !finished else {
            return false
        }
        guard count == 0 else {
            return true
        }
        
        character = nextCharacter
        
        var repetitions = 0
        while let character = iterator.next() {
            guard let digit = character.wholeNumberValue else {
                self.nextCharacter = character
                break
            }

            repetitions = (repetitions * 10) + digit
        }
        self.count = repetitions
        if repetitions == 0 {
            finished = true
        }
        
        return !finished
    }
}
