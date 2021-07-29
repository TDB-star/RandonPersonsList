//
//  PersonsModel.swift
//  RandonPersonsList
//
//  Created by Tatiana Dmitrieva on 27/07/2021.
//

import Foundation

struct Person {
    let name: String
    let surName: String
    let telephone: String
    let email: String
    var fullName: String {
        "\(name) \(surName)"
    }
    
}




