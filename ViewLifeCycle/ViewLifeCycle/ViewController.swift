//
//  ViewController.swift
//  ViewLifeCycle
//
//  Created by Hargun Singh on 22/07/25.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("View Controller - View Did Load")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("View Will Appear")
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("View Did Appear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("View will Disappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("View Did Disappear")
    }


}

