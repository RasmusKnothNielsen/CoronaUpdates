//
//  ViewController.swift
//  CoronaUpdates
//
//  Created by Rasmus Knoth Nielsen on 01/05/2020.
//  Copyright © 2020 Rasmus Knoth Nielsen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let dataManipulator = DataManipulatorAPI()

    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataManipulator.getUsCurrent()
    }

    @IBAction func getDataButtonPressed(_ sender: UIButton) {
        print(dataManipulator.currentUS.positive)
        let string = "Positive: \(String(dataManipulator.currentUS.positive)) \n" +
            "Negative: \(String(dataManipulator.currentUS.negative)) \n" +
            "Pending: \(String(dataManipulator.currentUS.pending)) \n"
        textView.text = string
    }
}

