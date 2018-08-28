import Foundation

class Converter {

    func convert(_ number: Int) -> String {
        if number == 5 {
            return "V"
        } else {
            return String(repeating: "I", count: number)
        }
    }
}
