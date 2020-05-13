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
    
    func getUsCurrent() -> USCurrent {
        
        // Semaphore
        let semaphore = DispatchSemaphore(value: 0)
        

        if let url = URL(string: "http://covidtracking.com/api/us") {
           URLSession.shared.dataTask(with: url, completionHandler:  { data, response, error in
              if let data = data {
                do {
                    let res = try JSONDecoder().decode(Array<CurrentUS>.self, from: data)
                    print(res)
                    self.currentUS = USCurrent(positive: res.first!.positive, negative: res.first!.negative, pending: res.first!.pending, hospitalizedCurrently: res.first!.hospitalizedCurrently, hospitalizedCumulative: res.first!.hospitalizedCumulative, recovered: res.first!.recovered, death: res.first!.death, onVentilatorCurrently: res.first!.onVentilatorCurrently, lastModified: res.first!.lastModified)
                    // Signal that the data fetch is done
                    semaphore.signal()
                    
                } catch let error {
                    print(error)
                }
               }
           }).resume()
            
            // Wait until the data is fetched
            _ = semaphore.wait(timeout: .distantFuture)
            
        }
        return currentUS
    }
    
    struct CurrentUS: Codable {
        
        let positive: Int
        let negative: Int
        let pending: Int
        let hospitalizedCurrently: Int
        let hospitalizedCumulative: Int
        let recovered: Int
        let death: Int
        let onVentilatorCurrently: Int
        let lastModified: String
    }
    
}
