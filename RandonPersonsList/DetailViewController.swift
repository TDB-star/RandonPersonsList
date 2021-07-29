//
//  DetailViewController.swift
//  RandonPersonsList
//
//  Created by Tatiana Dmitrieva on 27/07/2021.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        phoneLabel.text = person.telephone
        emailLabel.text = person.email
        navigationItem.title = person.fullName
    }
}
