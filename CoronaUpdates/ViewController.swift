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
        let positive = data.positive
        let negative = data.negative
        let pending = data.pending
        let hospitalizedCurrently = data.hospitalizedCurrently
        let onVentilatorsCurrently = data.onVentilatorCurrently
        let percentOfPeopleOnVentilators: Double = (Double(onVentilatorsCurrently) / Double(hospitalizedCurrently)) * 100
        
        let string = "Total number of cases:\n" +
            "Positive: \(String(positive)) \n" +
            "Negative: \(String(negative)) \n" +
            "Pending: \(String(pending)) \n\n" +
            "Currently Hospitalized: \(String(hospitalizedCurrently))\n" +
        "Currently on Ventilator: \(String(onVentilatorsCurrently))\n" +
            "Thus \(String(Double(round(percentOfPeopleOnVentilators))))% of all hospitalized people are on a Ventilator currently"
        
        textView.text = string
    }

    @IBAction func getDataButtonPressed(_ sender: UIButton) {
        print(dataManipulator.currentUS.positive)
        
        let positive = dataManipulator.currentUS.positive
        let negative = dataManipulator.currentUS.negative
        let pending = dataManipulator.currentUS.pending
        let hospitalizedCurrently = dataManipulator.currentUS.hospitalizedCurrently
        let onVentilatorsCurrently = dataManipulator.currentUS.onVentilatorCurrently
        let percentOfPeopleOnVentilators: Double = (Double(onVentilatorsCurrently) / Double(hospitalizedCurrently)) * 100
        
        let string = "Total number of cases:\n" +
            "Positive: \(String(positive)) \n" +
            "Negative: \(String(negative)) \n" +
            "Pending: \(String(pending)) \n\n" +
            "Currently Hospitalized: \(String(hospitalizedCurrently))\n" +
        "Currently on Ventilator: \(String(onVentilatorsCurrently))\n" +
            "Thus \(String(Double(round(percentOfPeopleOnVentilators))))% of all hospitalized people are on a Ventilator currently"
        
        textView.text = string
    }
}

