//
//  ViewController.swift
//  SegueProject
//
//  Created by Hargun Singh on 18/07/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var switchCheck: UISwitch!
    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func unwindToRed(unwindSegue: UIStoryboardSegue){
        
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        segue.destination.navigationItem.title = textField.text
//    }
    
    @IBAction func goToYellow(_ sender: UIButton) {
        if switchCheck.isOn {
            performSegue(withIdentifier: "YellowSegue", sender: nil)
        }
    }
    
    
}

