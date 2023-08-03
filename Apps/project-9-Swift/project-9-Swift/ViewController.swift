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
        
        let urlString: String
        if navigationController?.tabBarItem.tag == 0 {
            urlString = "https://hackingwithswift.com/samples/petitions-1.json"
        } else {
            urlString = "https://hackingwithswift.com/samples/petitions-2.json"
            //          "https://api.whitehouse.gov/v1/petetions.json?signatureCountFloor=10000&limit=100"
        }
        
        DispatchQueue.global(qos: .userInitiated).async {
            [weak self] in
            if let url = URL(string: urlString) {
                if let data = try? Data(contentsOf: url) {//Blocking code
                    // Then we are OK to parse the data
                    self?.parse(json: data)
                    return
                }
            }
        }
        
        self.showError()
    }
        
    func showError() {
        DispatchQueue.main.async { [weak self] in
            let ac = UIAlertController( title: "Loading Error", message: "There was a problem loading the feed; please check your connection and try again.", preferredStyle: .alert)
            ac.addAction(UIAlertAction(title: "OK", style: .default))
            self?.present(ac, animated: true)
        }
    }
//        "https://api.whitehouse.gov/v1/petitions.json?limit=100"
    
    func parse(json: Data) {
        let decoder = JSONDecoder()
        
        if let jsonPetition = try? decoder.decode(Petitions.self, from: json) {
            petitions = jsonPetition.results
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
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

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = DetailViewController()
        vc.detailItem = petitions[indexPath.row]
        navigationController?.pushViewController(vc, animated: true)
    }
}

