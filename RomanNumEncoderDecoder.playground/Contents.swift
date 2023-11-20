var testString = "MMMMI"
let symbol = "M"
print(testString)
while testString.hasPrefix(symbol) {
    testString.trimPrefix(symbol)
    print(testString)
}

class RomanNumerals {
    static let conversionArray: [(Int, String)] = [
        (1000, "M"),
        (900, "CM"),
        (500, "D"),
        (400, "CD"),
        (100, "C"),
        (90, "XC"),
        (50, "L"),
        (40, "XL"),
        (10, "X"),
        (9, "IX"),
        (5, "V"),
        (4, "IV"),
        (1, "I")
    ]
    
    static func toRoman(_ number: Int) -> String {
        var mutableNumber: Int = number, romanNumeral: String = String()
        conversionArray.map{ val, symbol in
            while mutableNumber - val >= 0 {
                mutableNumber -= val
                romanNumeral += symbol
            }
        }
        return romanNumeral
    }
    
    static func fromRoman(_ roman: String) -> Int {
        var mutableString: String = roman, numberArabic: Int = 0
        conversionArray.map{ val, symbol in
            while mutableString.hasPrefix(symbol) {
                mutableString.trimPrefix(symbol)
                numberArabic += val
            }
        }
        return numberArabic
    }
}

extension String {
    mutating func trimPrefix(_ prefix: String) {
        self.removeFirst(prefix.count)
    }
}
