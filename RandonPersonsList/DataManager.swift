//
//  DataManager.swift
//  RandonPersonsList
//
//  Created by Tatiana Dmitrieva on 27/07/2021.
//

import Foundation

var personNames = ["Jhon", "Loise", "Robin", "Michelle", "Nikos", "Laura"]
var personSurnames = ["Allen", "Clement", "Morel", "Pasquier", "Bernard", "Rochas"]
var phoneNumbers = ["6743290877", "2365409674", "0324433576", "4590864354", "4732987109", "2765097654"]
var emails = ["nnnn@gmail.com", "jhytf@mail.ru", "rtyed@yandex.ru", "ertwbt@orange.fr", "ritas234@mail.ru", "nfrtot@yahoo.fr"]


func createRandomElement(array: [String]) -> String {
        guard let randomElement = array.randomElement() else { return "" }
        return randomElement
    }
    
//func addRandomName() {
//        for _ in names {
//        name.append(createRandomName(personName: names))
//        }
//    }
//    
