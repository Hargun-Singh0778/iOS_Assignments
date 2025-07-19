//
//  ViewController.swift
//  Apple Pie
//
//  Created by Hargun Singh on 19/07/25.
//

import UIKit

class ViewController: UIViewController {
    var listOfWords = ["buccaneer","swift","glorious",
    "bug","program","incandescent"]
    
    let incorrectMovesAllowed = 7
    var totalWins = 0 {
        didSet{
            newRound()
        }
    }
    var totalLoses = 0 {
        didSet{
            newRound()
        }
    }
    var currentGame: Game!

    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var correctWordLabel: UILabel!
    @IBOutlet weak var treeImageView: UIImageView!
    
    

    @IBOutlet var lettersButtons: [UIButton]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newRound()
    }
    
    func updateUI() {
           var displayWord = [String]()
           for letter in currentGame.formattedWord {
               displayWord.append(String(letter))
           }
           correctWordLabel.text = displayWord.joined(separator: " ")
           scoreLabel.text = "Wins: \(totalWins), Losses: \(totalLoses)"
           treeImageView.image = UIImage(named: "Tree \(currentGame.incorrectMoveRemaining)")
       }
    
//    func newRound(){
//        let newword = listOfWords.removeFirst()
//        currentGame = Game(word: newword, incorrectMoveRemaining: incorrectMovesAllowed,gussedLetters: [])
//        updateUI()
//        
//    }
    func newRound() {
            if !listOfWords.isEmpty {
                let newWord = listOfWords.removeFirst()
                currentGame = Game(word: newWord,
                                   incorrectMoveRemaining: incorrectMovesAllowed,
                                   gussedLetters: [])
                enableLetterButtons(true)
                updateUI()
            } else {
                enableLetterButtons(false)
            }
        }
    func enableLetterButtons(_ enable: Bool) {
            for button in lettersButtons {
                button.isEnabled = enable
            }
        }
    
    func updateGameState(){
        if currentGame.incorrectMoveRemaining == 0 {
            totalLoses += 1
        }else if currentGame.word == currentGame.formattedWord{
            totalWins += 1
        }else {
            updateUI()
        }
        
        
    }

    @IBAction func letterButtonPressed(_ sender: UIButton) {
        sender.isEnabled = false

            // Safely unwrap the button title from configuration
            guard let letterString = sender.configuration?.title,
                  let letter = letterString.lowercased().first else {
                print("Button title not found")
                return
            }

            currentGame.playerGussed(letter: letter)
            updateGameState()
    }
}

