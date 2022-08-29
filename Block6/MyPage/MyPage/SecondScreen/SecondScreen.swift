//
//  SecondScreen.swift
//  MyPage
//
//  Created by Ruslan Liulka on 29.08.2022.
//

import Foundation
import UIKit

class SecondScreen: UIView {
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var mainIamge: UIImageView!
    @IBOutlet weak var mainLAble: UILabel!
    @IBOutlet weak var date: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    func commonInit() {
        Bundle.main.loadNibNamed("SecondScreen", owner: self, options: nil)
        mainView.fixInView(self)
        mainIamge.layer.cornerRadius = 20
    }
    
    func config(image: UIImage, title: String = "", data: String = "") {
        mainIamge.image = image
        mainLAble.text = title
        date.text = data
    }
    
}
