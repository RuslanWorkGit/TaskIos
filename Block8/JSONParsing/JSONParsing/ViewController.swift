//
//  ViewController.swift
//  JSONParsing
//
//  Created by Ruslan Liulka on 08.09.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        guard let url = Bundle.main.url(forResource: "RawData", withExtension: "json") else {return}
        
        do {
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            let jsonData = try decoder.decode(Company.self, from: data)
            print(jsonData.companyDescription)
            print(jsonData.listOfData?.first?.modelNumber)
            print(jsonData.listOfData?.first?.countries?.last)
            print(jsonData.listOfData?.last?.price?.regions?.first?.name)
            print(jsonData.listOfData?.last?.price?.regions?.last?.price)
            //print(jsonData.listOfData.modelNumber)
        } catch {
            print("error: \(error)")
        }
    }
}

