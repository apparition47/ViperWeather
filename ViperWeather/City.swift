//
//  City.swift
//  ViperWeather
//
//  Created by Dmitriy Utmanov on 01/03/16.
//  Copyright © 2016 Dmitriy Utmanov. All rights reserved.
//

import Foundation
import RealmSwift

struct City {
    let title: String
    let ID: String
    let placeID: String
    let temp: Double
    
    var lat: Double = 0.0
    var lng: Double = 0.0
    
    var tempString: String {
        let temp = Double(round(10.0 * self.temp) / 10.0)
        return String(temp) + "℃"
    }
    
    func isLocationEnable() -> Bool {
        if self.lat == 0.0 && self.lng == 0.0 {
            return false
        }
        return true
    }
}


class CityEntity: Object {
    dynamic var title: String = ""
    dynamic var ID: String = ""
    dynamic var placeID: String = ""
    dynamic var lat: Double = 0.0
    dynamic var lng: Double = 0.0
    dynamic var temp: Double = 0.0
    
    override static func primaryKey() -> String? {
        return "placeID"
    }
}