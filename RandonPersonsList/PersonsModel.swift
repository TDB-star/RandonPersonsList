//
//  PersonsModel.swift
//  RandonPersonsList
//
//  Created by Tatiana Dmitrieva on 27/07/2021.
//

import Foundation

struct Person {
    var name: String
    var surName: String
    var telephone: String
    var email: String
    var fullName: String {
        "\(name) \(surName)"
    }
    
    static func getperson() -> [Person] {
        var persons = [Person]()
        
        for _ in personNames {
            persons.append(Person(name:personNames.randomElement() ?? "", surName: personSurnames.randomElement() ?? "", telephone: phoneNumbers.randomElement() ?? "", email: emails.randomElement() ?? ""))
        }
        return persons
    }
}




