import Foundation

class Brain{
    
    func isDivisibleByThree(_ number: Double) -> Bool {
        return number.truncatingRemainder(dividingBy: Double(3)) == 0
    }
    
    func isDivisibleByFive(_ number: Double) -> Bool {
        return number.truncatingRemainder(dividingBy: Double(5)) == 0
    }
    
    func fizzAndOrBuzz(_ number: Double) -> String {
        var response = ""
        if isDivisibleByThree(number){
            response += "Fizz"
        }
        if isDivisibleByFive(number){
            response += "Buzz"
        }
        return response
    }
}
