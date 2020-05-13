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
    
    @IBOutlet weak var additionalTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textView.text = "Welcome to Covid-19 Tracker!"
        
        additionalTextView.text = "This app was created to give the users a near live updating platform on how Corona is evolving in the U.S."
        
    }
    

}
