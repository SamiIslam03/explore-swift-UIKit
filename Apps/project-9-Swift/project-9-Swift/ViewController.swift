//
//  ViewController.swift
//  project7Swift
//
//  Created by Sami Islam on 7/27/23.
//

import UIKit

class ViewController: UITableViewController {
    var petitions = [Petition]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        performSelector(inBackground: #selector(fetchJSON), with: nil)
    }
    
    @objc func fetchJSON() {
        let urlString: String
        if navigationController?.tabBarItem.tag == 0 {
            urlString = "https://hackingwithswift.com/samples/petitions-1.json"
        } else {
            urlString = "https://hackingwithswift.com/samples/petitions-2.json"
            //          "https://api.whitehouse.gov/v1/petetions.json?signatureCountFloor=10000&limit=100"
        }
    
        if let url = URL(string: urlString) {
            if let data = try? Data(contentsOf: url) {//Blocking code
                // Then we are OK to parse the data
                parse(json: data)
                return
            }
        }
        performSelector(onMainThread: #selector(showError), with: nil, waitUntilDone: false)
    }
        
   @objc func showError() {
       let ac = UIAlertController( title: "Loading Error", message: "There was a problem loading the feed; please check your connection and try again.", preferredStyle: .alert)
        ac.addAction(UIAlertAction(title: "OK", style: .default))
        present(ac, animated: true)
    }
//        "https://api.whitehouse.gov/v1/petitions.json?limit=100"
    
    func parse(json: Data) {
        let decoder = JSONDecoder()
        
        if let jsonPetition = try? decoder.decode(Petitions.self, from: json) {
            petitions = jsonPetition.results
            tableView.performSelector(onMainThread: #selector(UITableView.reloadData), with: nil, waitUntilDone: false)
        } else {
            performSelector(onMainThread: #selector(showError), with: nil, waitUntilDone: false)
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

