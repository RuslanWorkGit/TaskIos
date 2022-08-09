//
//  MyView.swift
//  FirstTask
//
//  Created by Ruslan Liulka on 09.08.2022.
//

import UIKit

class MyView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.layer.cornerRadius = self.frame.height / 2
    }
    
    override required init?(coder: NSCoder) {
        fatalError("Error")
    }

}
