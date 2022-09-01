//
//  FirstViewController.swift
//  Homework6
//
//  Created by Ruslan Liulka on 18.08.2022.
//

import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet weak var bounceBall: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bounceBall.backgroundColor = .red
        bounceBall.layer.cornerRadius = bounceBall.frame.width / 2
        
    }
    
    
    @IBAction func bounceButtonStart(_ sender: Any) {
        
        UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 4, initialSpringVelocity: 5, options: [.curveEaseIn, .repeat, .autoreverse], animations: { //curveEaseIn - змушує анімацію рукатися повільніше а потім пришвидшукватися
                                         //repeat 
                                         //autoreverse - запуск анімація назад і в перед потрібно запускати разом з repeat
            self.bounceBall.center.y = self.view.center.y
        })
    }
}
