//
//  PersonsListTableViewController.swift
//  RandonPersonsList
//
//  Created by Tatiana Dmitrieva on 27/07/2021.
//

import UIKit

class PersonsListTableViewController: UITableViewController {

    var person = DataManager.getperson()
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return person.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PersonCell", for: indexPath)
        let persons = person[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = persons.fullName
        cell.contentConfiguration = content
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
