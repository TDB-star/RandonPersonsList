//
//  PersonsListTableViewController.swift
//  RandonPersonsList
//
//  Created by Tatiana Dmitrieva on 27/07/2021.
//

import UIKit

class PersonsListTableViewController: UITableViewController {

    var person = Person.getperson()

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return person.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PersonCell", for: indexPath)
        cell.textLabel?.text = person[indexPath.row].fullName

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "ToDetailVC", sender: person)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailVC = segue.destination as? DetailViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow  else { return }
        let selectedPerson = person[indexPath.row]
        detailVC.person = selectedPerson
        
    }
    
}
