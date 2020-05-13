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
        
        additionalTextView.text = "This app was created to give the users a near live updating platform on how Corona is evolving in the U.S.\n\n" +
            "Furthermore, the app was developed as a mandatory assignment for IOS Development, in Computer Science, to learn more about API calls and the problems associated with this kind of asynchronous programming.\n\n" +
        "The API used for pulling data is the covidtracker API at the following link:\n\n" +
        "\thttp://covidtracking.com/api/"
            
        
    }
    
    @IBAction func goToApiButtonPressed(_ sender: UIButton) {
        guard let url = URL(string: "http://covidtracking.com/api/") else { return }
        UIApplication.shared.open(url)
    }
    
}
