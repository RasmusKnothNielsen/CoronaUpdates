//
//  DataManipulatorAPI.swift
//  CoronaUpdates
//
//  Created by Rasmus Knoth Nielsen on 01/05/2020.
//  Copyright © 2020 Rasmus Knoth Nielsen. All rights reserved.
//

import Foundation

class DataManipulatorAPI {
    
    var currentUS: USCurrent = USCurrent()
    
    func getUsCurrent()   {
        

        if let url = URL(string: "http://covidtracking.com/api/us") {
           URLSession.shared.dataTask(with: url, completionHandler:  { data, response, error in
              if let data = data {
                do {
                    let res = try JSONDecoder().decode(Array<CurrentUS>.self, from: data)
                    self.currentUS = USCurrent(positive: res.first!.positive, negative: res.first!.negative, pending: res.first!.pending, hospitalizedCurrently: res.first!.hospitalizedCurrently, hospitalizedCumulative: res.first!.hospitalizedCumulative, recovered: res.first!.recovered, death: res.first!.death)
                    
                } catch let error {
                    print(error)
                }
               }
           }).resume()
        }
    }
    
    struct CurrentUS: Codable {
        
        let positive: Int
        let negative: Int
        let pending: Int
        let hospitalizedCurrently: Int
        let hospitalizedCumulative: Int
        let recovered: Int
        let death: Int
    }
    
}
