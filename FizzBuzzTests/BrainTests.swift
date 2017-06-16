import Quick
import Nimble
@testable import FizzBuzz

class BrainTests: QuickSpec {
    override func spec(){
        let brain = Brain()
        
        describe("FizzBuzz Brain math"){
            context("when number is 3"){
                let number  = Double(3)
                
                it("is divisible by three"){
                    expect(brain.isDivisibleByThree(number)).to(beTrue())
                }
                it("is not divisible by five"){
                    expect(brain.isDivisibleByFive(number)).to(beFalse())
                }
                
            }
            
            context("when number is 5"){
                let number  = Double(5)
                
                it("is not divisible by three"){
                    expect(brain.isDivisibleByThree(number)).to(beFalse())
                }
                it("is divisible by five"){
                    expect(brain.isDivisibleByFive(number)).to(beTrue())
                }
            }
            
            
            context("when number is 11"){
                let number  = Double(11)
                
                it("is not divisible by five"){
                    expect(brain.isDivisibleByFive(number)).to(beFalse())
                }
                
                it("is not divisible by three"){
                    expect(brain.isDivisibleByThree(number)).to(beFalse())
                }
            }
        }
        
        describe("FizzBuzz Brain printer"){
            context("when number is 3"){
                let number = Double(3)
                
                it("says Fizz"){
                    expect(brain.fizzAndOrBuzz(number)).to(match("Fizz"))
                }
            }
            
            context("when number is 5"){
                let number = Double(5)
                
                it("says Buzz"){
                    expect(brain.fizzAndOrBuzz(number)).to(match("Buzz"))
                }
            }
            
            context("when number is 15"){
                let number = Double(15)
                
                it("says FizzBuzz"){
                    expect(brain.fizzAndOrBuzz(number)).to(match("FizzBuzz"))
                }
            }
            
            context("when number is 16"){
                let number = Double(16)
                
                it("says 16"){
                    expect(brain.fizzAndOrBuzz(number)).to(match(String(number)))
                }
            }
        }
    }
}
