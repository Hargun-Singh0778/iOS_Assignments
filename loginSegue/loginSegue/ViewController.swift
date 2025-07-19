//
//  ViewController.swift
//  loginSegue
//
//  Created by Hargun Singh on 18/07/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var forgetPasswordButton: UIButton!
    @IBOutlet weak var forgetUserNameButton: UIButton!
    @IBOutlet weak var userTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if let destination = segue.destination as? UIViewController {
//            destination.navigationItem.title = userTextField.text
//        }
//    }
    
    @IBAction func forgotUserNameTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "MainSegue", sender: sender)
    }

    @IBAction func forgotPasswordTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "MainSegue", sender: sender)
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else { return }

        if sender == forgetPasswordButton {
            segue.destination.navigationItem.title = "Forgot Password"
        } else if sender == forgetUserNameButton {
            segue.destination.navigationItem.title = "Forgot Username"
        } else {
            segue.destination.navigationItem.title = userTextField.text
        }
    }


    
    
    
}

