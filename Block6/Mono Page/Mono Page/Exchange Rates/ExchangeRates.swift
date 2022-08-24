//
//  ExchangeRates.swift
//  Mono Page
//
//  Created by Ruslan Liulka on 23.08.2022.
//

import Foundation
import UIKit

class ExchangeRates:UIView {
    
    @IBOutlet weak var exchangeRateView: UIView!
    @IBOutlet weak var rightExchangeRatesView: UIView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    func commonInit() {
        Bundle.main.loadNibNamed("ExchangeRates", owner: self, options: nil)
        exchangeRateView.leftFixInView(self)
        rightExchangeRatesView.rightFixInView(self)
        exchangeRateView.roundCorners([.topLeft, .bottomLeft], radius: 25)
        rightExchangeRatesView.roundCornerss(corners: [.topRight, .bottomRight], radius: 25)
    }
    

    
    
}

extension UIView {

    func roundCorners(_ corners: UIRectCorner, radius: CGFloat) {
         let path = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
         let mask = CAShapeLayer()
         mask.path = path.cgPath
         self.layer.mask = mask
    }
    
    func roundCornerss(corners: UIRectCorner, radius: CGFloat) {
            if #available(iOS 11, *) {
                self.clipsToBounds = true
                self.layer.cornerRadius = radius
                var masked = CACornerMask()
                if corners.contains(.topLeft) { masked.insert(.layerMinXMinYCorner) }
                if corners.contains(.topRight) { masked.insert(.layerMaxXMinYCorner) }
                if corners.contains(.bottomLeft) { masked.insert(.layerMinXMaxYCorner) }
                if corners.contains(.bottomRight) { masked.insert(.layerMaxXMaxYCorner) }
                self.layer.maskedCorners = masked
            }
            else {
                let path = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
                let mask = CAShapeLayer()
                mask.path = path.cgPath
                layer.mask = mask
            }
        }
    
    func leftFixInView(_ container: UIView!) -> Void{
        self.translatesAutoresizingMaskIntoConstraints = false;
        self.frame = container.frame;
        container.addSubview(self);
        NSLayoutConstraint(item: self, attribute: .leading, relatedBy: .equal, toItem: container, attribute: .leading, multiplier: 1.0, constant: 0).isActive = true
        NSLayoutConstraint(item: self, attribute: .width, relatedBy: .equal, toItem: container, attribute: .width, multiplier: 0.495, constant: 0).isActive = true
        NSLayoutConstraint(item: self, attribute: .top, relatedBy: .equal, toItem: container, attribute: .top, multiplier: 1.0, constant: 0).isActive = true
        NSLayoutConstraint(item: self, attribute: .bottom, relatedBy: .equal, toItem: container, attribute: .bottom, multiplier: 1.0, constant: 0).isActive = true
    }
    
    func rightFixInView(_ container: UIView!) -> Void{
        self.translatesAutoresizingMaskIntoConstraints = false;
        self.frame = container.frame;
        container.addSubview(self);
        NSLayoutConstraint(item: self, attribute: .trailing, relatedBy: .equal, toItem: container, attribute: .trailing, multiplier: 1.0, constant: 0).isActive = true
        NSLayoutConstraint(item: self, attribute: .width, relatedBy: .equal, toItem: container, attribute: .width, multiplier: 0.495, constant: 0).isActive = true
        NSLayoutConstraint(item: self, attribute: .top, relatedBy: .equal, toItem: container, attribute: .top, multiplier: 1.0, constant: 0).isActive = true
        NSLayoutConstraint(item: self, attribute: .bottom, relatedBy: .equal, toItem: container, attribute: .bottom, multiplier: 1.0, constant: 0).isActive = true
    }

}
