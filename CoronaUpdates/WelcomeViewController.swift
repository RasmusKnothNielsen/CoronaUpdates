//
//  WelcomeViewController.swift
//  CoronaUpdates
//
//  Created by Rasmus Knoth Nielsen on 12/05/2020.
//  Copyright © 2020 Rasmus Knoth Nielsen. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {


    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textView.text = "Welcome to Covid-19 Tracker!"
        // Do any additional setup after loading the view.
    }
    

}
