//
//  ViewController.swift
//  project7Swift
//
//  Created by Sami Islam on 7/27/23.
//

import UIKit

class ViewController: UITableViewController {
    var petitions = [Petition ]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let urlString = "https://hackingwithswift.com/samples/petitions-1.json"
        
        if let url = URL(string: urlString) {
            if let data = try? Data(contentsOf: url) {
                // Then we are OK to parse the data
                parse(json: data)
            }
        }
//        "https://api.whitehouse.gov/v1/petitions.json?limit=100"
    }
    
    func parse(json: Data) {
        let decoder = JSONDecoder()
        
        if let jsonPetition = try? decoder.decode(Petitions.self, from: json) {
            petitions = jsonPetition.results
            tableView.reloadData()
        }
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return petitions.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let petitions = petitions[indexPath.row]
        cell.textLabel?.text = petitions.title
        cell.detailTextLabel?.text = petitions.body
        return cell
    }

}

