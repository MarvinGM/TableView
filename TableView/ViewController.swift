//
//  ViewController.swift
//  TableView
//
//  Created by Amben on 6/14/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var tableView: UITableView!
    
    let names = [
        "John Smith",
        "Dan Smith",
        "Jason Smith",
        "Mary Smith"
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }


}

//delegate function are used to handle interactions of cells
extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("My name is", names[indexPath.row])
    }
}

// need to prodive de function
// 1 is NumberOfRowsInsection
// 2 CellForRowAt
extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        
        cell.textLabel?.text = names[indexPath.row]
        
        return cell
    }
    
}
