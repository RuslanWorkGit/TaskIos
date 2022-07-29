//
//  SecondScreenViewController.swift
//  Live2Apps
//
//  Created by Ruslan Liulka on 29.07.2022.
//

import UIKit

class SecondScreenViewController: UIViewController {

    let someTestString = "123"
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let manClass = HumanClass()
        manClass.name = "Alice"
        
        let newManClass = manClass
        newManClass.name = "Tom"
        
        var manStruct = HumanStruct()
        manStruct.name = "Bob"
        
        var newManStruct = manStruct
        newManStruct.name = "Chuck"
        
        

        
    }
    
    func textString() {
        let someString = "1286763"
    }

}

//Referenc type
//Class, Clouser

class HumanClass {
    var name: String = ""

}
//Value type
//Struct

struct HumanStruct {
    var name: String = ""
}
