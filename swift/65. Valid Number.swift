class Solution {
    enum State {
        case invalid
        case integerStart
        case integerStartBodyRequired
        case integerBody
        case fractionStart
        case fractionStartBodyRequired
        case fractionBody
        case exponentStart
        case exponentStartBodyRequired
        case exponentBody
    }
    
    var validFinalStates: [State] = [
        .integerBody,
        .fractionStart,
        .fractionBody,
        .exponentBody
    ]

    func isNumber(_ s: String) -> Bool {
        var state = State.integerStart
        for c in s where state != .invalid {
            switch c {
            case "0", "1", "2", "3", "4", "5", "6", "7", "8", "9":
                switch state {
                case .integerStart, .integerStartBodyRequired, .integerBody:
                    state = .integerBody
                case .exponentStart, .exponentStartBodyRequired, .exponentBody:
                    state = .exponentBody
                case .fractionStart, .fractionStartBodyRequired, .fractionBody:
                    state = .fractionBody
                default:
                    state = .invalid
                }
 
            case "-":
                switch state {
                case .integerStart:
                    state = .integerStartBodyRequired
                case .exponentStart, .exponentStartBodyRequired:
                    state = .exponentStartBodyRequired
                default:
                    state = .invalid
                }
            
            case "+":
                switch state {
                case .integerStart:
                    state = .integerStartBodyRequired
                case .exponentStart, .exponentStartBodyRequired:
                    state = .exponentStartBodyRequired
                default:
                    state = .invalid
                }
            
            case ".":
                switch state {
                case .integerBody:
                    state = .fractionStart
                case .integerStart, .integerStartBodyRequired:
                    state = .fractionStartBodyRequired
                default:
                    state = .invalid
                }
            
            case "e", "E":
                switch state {
                case .integerBody, .fractionBody:
                    state = .exponentStartBodyRequired
                case .fractionStart:
                    state = .exponentStartBodyRequired
                default:
                    state = .invalid
                }
            
            default:
                state = .invalid
            }
        }
        
        return validFinalStates.contains(state)
    }
}
