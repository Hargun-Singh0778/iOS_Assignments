//
//  ViewController.swift
//  Apple Pie
//
//  Created by Hargun Singh on 19/07/25.
//

import UIKit

class ViewController: UIViewController {
    var listOfWords = ["buccaneer","swift","glorious",
    "bug,","program","incandescent"]
    
    let incorrectMovesAllowed = 7
    var totalWins = 0
    var totalLoses = 0
    var currentGame: Game!

    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var correctWordLabel: UILabel!
    @IBOutlet weak var treeImageView: UIImageView!
    
    

    @IBOutlet var lettersButtons: [UIButton]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newRound()
    }
    
    func updateUI(){
        scoreLabel.text = "Wins: \(totalWins), Losess \(totalLoses)"
        treeImageView.image = UIImage(named: "Tree \(currentGame.incorrectMoveRemaining)")
        
    }
    
    func newRound(){
        let newword = listOfWords.removeFirst()
        currentGame = Game(word: newword, incorrectMoveRemaining: incorrectMovesAllowed)
        updateUI()
        
    }

    @IBAction func letterButtonPressed(_ sender: UIButton) {
        sender.isEnabled = false
    }
    
}

