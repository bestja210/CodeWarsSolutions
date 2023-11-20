func solution(_ number:Int) -> String {
    var romanNumeralRepresentation: String = String()
    var tempValueStore: Int
    var digitsInNumber: Int = 0
    while number != 0 {
        digitsInNumber += 1
        tempValueStore = number % 10
        if tempValueStore != 0 {
            switch (tempValueStore, digitsInNumber) {
            case (1...3, 1):
                for _ in 1...tempValueStore {
                    romanNumeralRepresentation += RomanNumerals.I.description
                }
            case (4, 1):
                romanNumeralRepresentation += RomanNumerals.IV.description
            case (5, 1):
                romanNumeralRepresentation += RomanNumerals.V.description
            case (6...8, 1):
                romanNumeralRepresentation += RomanNumerals.V.description
                for _ in 6...tempValueStore {
                    romanNumeralRepresentation += RomanNumerals.I.description
                }
            case (9, 1):
                romanNumeralRepresentation += RomanNumerals.IX.description
            case (1...3, 2):
                for _ in 1...tempValueStore {
                    romanNumeralRepresentation.push(subString: RomanNumerals.X.description)
                }
            case (4, 2):
                romanNumeralRepresentation.push(subString: RomanNumerals.XL.description)
            case (5, 2):
                romanNumeralRepresentation.push(subString: RomanNumerals.L.description)
            case (6...8, 2):
                romanNumeralRepresentation.push(subString: RomanNumerals.L.description)
                for _ in 6...tempValueStore {
                    romanNumeralRepresentation.push(subString: RomanNumerals.X.description)
                }
            case (9, 2):
                romanNumeralRepresentation.push(subString: RomanNumerals.XC.description)
            case (1...3, 3):
                for _ in 1...tempValueStore {
                    romanNumeralRepresentation.push(subString: RomanNumerals.C.description)
                }
            case (4, 3):
                romanNumeralRepresentation.push(subString: RomanNumerals.CD.description)
            case (5, 3):
                romanNumeralRepresentation.push(subString: RomanNumerals.D.description)
            case (6...8, 3):
                romanNumeralRepresentation.push(subString: RomanNumerals.D.description)
                for _ in 6...tempValueStore {
                    romanNumeralRepresentation.push(subString: RomanNumerals.C.description)
                }
            case (9, 3):
                romanNumeralRepresentation.push(subString: RomanNumerals.CM.description)
            case (1...3, 4):
                for _ in 1...tempValueStore {
                    romanNumeralRepresentation.push(subString: RomanNumerals.M.description)
                }
            default:
                return "Value out of range"
            }
            tempValueStore /= 10
        }
    }
    return romanNumeralRepresentation
}


extension String {
    mutating func push(subString: String) {
        self.insert(contentsOf: subString, at: self.startIndex)
    }
}

enum RomanNumerals: Int, CustomStringConvertible {
  case I = 1
  case IV = 4
  case V = 5
    case IX = 9
  case X = 10
    case XL = 40
  case L = 50
    case XC = 90
  case C = 100
    case CD = 400
  case D = 500
    case CM = 900
  case M = 1_000
    
    var description: String {
        switch self {
        case .I:
            return "I"
        case .IV:
            return "IV"
        case .V:
            return "V"
        case .IX:
            return "IX"
        case .X:
            return "X"
        case .XL:
            return "XL"
        case .L:
            return "L"
        case .XC:
            return "XC"
        case .C:
            return "C"
        case .CD:
            return "CD"
        case .D:
            return "D"
        case .CM:
            return "CM"
        case .M:
            return "M"
        }
    }
}
