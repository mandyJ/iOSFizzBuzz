import Foundation

class Game {
    
    var score: Int
    
    private var brain = Brain()
    
    init() {
        score = 0
    }
    
    func play(move: String) -> Bool {
        if move == brain.fizzAndOrBuzz(Double(score+1)){
            score = score + 1
            return true
        }else{
            return false
        }
    }
}
