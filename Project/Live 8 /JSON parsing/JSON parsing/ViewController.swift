//
//  ViewController.swift
//  JSON parsing
//
//  Created by Ruslan Liulka on 05.09.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        guard let url = Bundle.main
            .url(forResource: "UsersData", withExtension: "json") else {return}
        do{
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            let jsonData = try decoder.decode(UsersAllData.self, from: data)
            print(jsonData.responseData?.users?.count)
        } catch {
           print("error \(error)")
        }
        
    }


}

