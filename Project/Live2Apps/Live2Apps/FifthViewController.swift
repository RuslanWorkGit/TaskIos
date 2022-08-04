//
//  FifthViewController.swift
//  Live2Apps
//
//  Created by Ruslan Liulka on 04.08.2022.
//

import UIKit

class FifthViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let myStack = Stack<String>()
        myStack.push(element: "Uno")
        myStack.push(element: "Dos")
        myStack.push(element: "Tres")
        myStack.push(element: "Quatro")
        
        let line1 = myStack.pop()
        let line2 = myStack.pop()
        let line3 = myStack.pop()
        let line4 = myStack.pop()
        
    }
}

class Stack<Element> {
    
    var allData: [Element] = []
    
    func push(element: Element) {
        allData.append(element)
    }
    
    func pop() -> Element?{
        
//        defer{ allData.removeLast() } // Виконується код після виконання return
//        return allData.last
        return allData.removeLast()
    }

}
