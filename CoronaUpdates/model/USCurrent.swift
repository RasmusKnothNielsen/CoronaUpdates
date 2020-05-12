//
//  USCurrent.swift
//  CoronaUpdates
//
//  Created by Rasmus Knoth Nielsen on 01/05/2020.
//  Copyright © 2020 Rasmus Knoth Nielsen. All rights reserved.
//

import Foundation

class USCurrent {
    
    var positive: Int = 0
    var negative: Int = 0
    var pending: Int = 0
    var hospitalizedCurrently: Int = 0
    var hospitalizedCumulative: Int = 0
    var recovered: Int = 0
    var death: Int = 0
    
    init() {
        
    }
    
    init(positive: Int, negative: Int, pending: Int, hospitalizedCurrently: Int, hospitalizedCumulative: Int, recovered: Int, death: Int) {
        self.positive = positive
        self.negative = negative
        self.pending = pending
        self.hospitalizedCurrently = hospitalizedCurrently
        self.hospitalizedCumulative = hospitalizedCumulative
        self.recovered = recovered
        self.death = death
    }
    

    
}
