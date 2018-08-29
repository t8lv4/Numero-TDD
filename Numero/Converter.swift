import Foundation

class Converter {

    func convert(_ number: Int) -> String {
        var result = ""
        var localNumber = number
        let numberSymbols: [(number: Int, symbol: String)] =
            [(1000, "M"),
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
             (1, "I")]

        for tuple in numberSymbols {
            while localNumber >= tuple.number {
                result += tuple.symbol
                localNumber = localNumber - tuple.number
            }
        }

        return result
    }
}
