import Foundation

class Converter {

    func convert(_ number: Int) -> String {
        var result = ""
        var localNumber = number
        let numberSymbols: [(number: Int, symbol: String)] =
            [(10, "X"),
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
