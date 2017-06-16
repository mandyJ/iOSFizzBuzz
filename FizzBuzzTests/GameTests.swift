import Quick
import Nimble
@testable import FizzBuzz

class GameTests: QuickSpec {
    override func spec(){
        describe("FizzBuzz Game score"){
            context("when the game starts"){
                let game = Game()
                
                it("should have score of 0"){
                    expect(game.score).to(equal(0))
                }
            }
            
            context("when the player the first move"){
                let game = Game()
                let _ = game.play(move:"1")
                
                it("the score should be one"){
                    expect(game.score).to(equal(1))
                }
            }
            
            context("when the player makes a move and the current score is 1"){
                let game = Game()
                game.score = 1
                let _ = game.play(move:"2")
                
                it("the score should increase by 1"){
                    expect(game.score).to(equal(2))
                }
            }
            
            context("when the correct answer is Fizz"){
                let game = Game()
                
                it("the move Fizz should be incorrect"){
                    game.score = 2
                    let result = game.play(move: "Fizz")
                    expect(result).to(beTrue())
                }
                it("the move Buzz should be incorrect"){
                    game.score = 2
                    let result = game.play(move: "Buzz")
                    expect(result).to(beFalse())
                }
                it("the move FizzBuzz should be incorrect"){
                    game.score = 2
                    let result = game.play(move: "FizzBuzz")
                    expect(result).to(beFalse())
                }
                it("the move 3 should be incorrect"){
                    game.score = 2
                    let result = game.play(move: "3")
                    expect(result).to(beFalse())
                }
            }
            
            context("when the correct answer is Buzz"){
                let game = Game()
                
                it("the move Buzz should be correct"){
                    game.score = 4
                    let result = game.play(move: "Buzz")
                    expect(result).to(beTrue())
                }
            }
            
            context("when the correct answer is FizzBuzz"){
                let game = Game()
                
                it("the move FizzBuzz should be correct"){
                    game.score = 14
                    let result = game.play(move: "FizzBuzz")
                    expect(result).to(beTrue())
                }
            }
            
            context("when the correct answer is 2"){
                let game = Game()
                
                it("the move 2 should be correct"){
                    game.score = 1
                    let result = game.play(move: String(Double(2)))
                    expect(result).to(beTrue())
                }
            }
            
            context("when the answer is incorrect"){
                let game = Game()
                game.score = 1
                
                it("the score should not increment"){
                    let _ = game.play(move: "Fizz")
                    expect(game.score).to(equal(1))
                }
            }
            
            
            
        }
    }
}
