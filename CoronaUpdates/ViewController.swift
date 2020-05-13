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
        
        let data = dataManipulator.getUsCurrent()
        setData(data)
    }

    @IBAction func getDataButtonPressed(_ sender: UIButton) {
        let data = dataManipulator.getUsCurrent()
        setData(data)
    }
    
    fileprivate func setData(_ data: USCurrent) {
        let positive = data.positive
        let negative = data.negative
        let pending = data.pending
        let hospitalizedCurrently = data.hospitalizedCurrently
        let onVentilatorsCurrently = data.onVentilatorCurrently
        let percentOfPeopleOnVentilators: Double = (Double(onVentilatorsCurrently) / Double(hospitalizedCurrently)) * 100
        let lastModified = data.lastModified
        
        let string = "Total number of cases:\n" +
            "\tPositive: \(String(positive)) \n" +
            "\tNegative: \(String(negative)) \n" +
            "\tPending: \(String(pending)) \n\n" +
            "Current numbers:\n" +
            "\tCurrently Hospitalized: \(String(hospitalizedCurrently))\n" +
            "\tCurrently on Ventilator: \(String(onVentilatorsCurrently))\n\n" +
            "Thus \(String(Double(round(percentOfPeopleOnVentilators))))% of all hospitalized people are currently on a Ventilator.\n\n" +
        "This data was last modified: \(lastModified)"
        
        textView.text = string
    }
}

