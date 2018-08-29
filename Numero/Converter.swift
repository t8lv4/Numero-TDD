import Foundation

class Converter {

    func convert(_ number: Int) -> String {
        var result = ""
        var localNumber = number
        while localNumber >= 10 {
            result += "X"
            localNumber = localNumber - 10
        }
        if localNumber >= 9 {
            result += "IX"
            localNumber = localNumber - 9
        }
        if localNumber >= 5 {
            result += "V"
            localNumber = localNumber - 5
        }
        if localNumber >= 4 {
            result += "IV"
            localNumber = localNumber - 4
        }
        result += String(repeating: "I", count: localNumber)
        return result
    }
}
