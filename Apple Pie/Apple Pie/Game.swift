//
//  Game.swift
//  Apple Pie
//
//  Created by Hargun Singh on 19/07/25.
//

import Foundation

struct Game{
    var word: String
    var incorrectMoveRemaining : Int
    var gussedLetters: [Character]
    
    
    mutating func playerGussed(letter: Character){
        gussedLetters.append(letter)
        if !word.contains(letter) {
            incorrectMoveRemaining -= 1
        }
    }
    
    var formattedWord: String{
        var gussedWord = ""
        for letters in word{
            if gussedLetters.contains(letters) {
                gussedWord += "\(letters)"
            }else {
                gussedWord += "_"
            }
        }
        return gussedWord
        
    }
    
    
}
