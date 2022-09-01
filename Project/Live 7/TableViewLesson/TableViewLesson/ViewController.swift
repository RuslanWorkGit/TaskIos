//
//  ViewController.swift
//  TableViewLesson
//
//  Created by Ruslan Liulka on 30.08.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    let arrayOfNames: [String] = ["Ruslan", "John", "Alis", "Andrew", "Bermigton", "Paul", "Lora", "Aura", "Kingsman", "Sumer"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate{
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayOfNames.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! SimpleTableViewCell
        
        let name = arrayOfNames[indexPath.row]
        cell.inedxLable.text = "\(indexPath.row + 1)"
        cell.nameLable.text = "\(arrayOfNames[indexPath.row])"
        return cell
    }
    
    //MARK:  - Delegate
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "SimpleDetailsViewController") as! SimpleDetailsViewController
        viewController.name = arrayOfNames[indexPath.row]
        
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
}
