//
//  ExchangeRates.swift
//  Mono Page
//
//  Created by Ruslan Liulka on 23.08.2022.
//

import Foundation
import UIKit

class ExchangeRates:UIView {
    
    @IBOutlet weak var leftExchangeRateView: UIView!
    @IBOutlet weak var rightExchangeRatesView: UIView!
    
    @IBOutlet weak var leftCurrencyName: UILabel!
    @IBOutlet weak var rightCurrencyName: UILabel!
    
    @IBOutlet weak var leftImageCurrency: UIImageView!
    @IBOutlet weak var rightImageCurrency: UIImageView!
    
    @IBOutlet weak var leftCurrentRate: UILabel!
    @IBOutlet weak var rightCurrentRate: UILabel!
    
    enum CountryCourency: String {
        case USA = "Dollar USA"
        case GreatBritain = "Pounds"
        case Poland = "Zlot"
        case France = "Euro"
        case ChechRepublic = "Krone"
        
    }
    
    
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
        leftExchangeRateView.leftFixInView(self)
        rightExchangeRatesView.rightFixInView(self)
        leftExchangeRateView.roundCornerss(corners: [.topLeft, .bottomLeft], radius: 25)
        rightExchangeRatesView.roundCornerss(corners: [.topRight, .bottomRight], radius: 25)
        
        leftCurrencyName.textColor = .gray
        rightCurrencyName.textColor = .gray

        
        rightCurrentRate.textAlignment = .left
        leftCurrentRate.textAlignment = .left

    }
    
    func config(firstCurrency: CountryCourency, secondCurrency: CountryCourency){
        switch firstCurrency{
        case .USA:
            leftCurrencyName.text = CountryCourency.USA.rawValue
            self.leftImageCurrency.image = UIImage(named: "united-states")
            leftCurrentRate.text = "36.65 / 37.50"
        case .GreatBritain:
            leftCurrencyName.text = CountryCourency.GreatBritain.rawValue
            self.leftImageCurrency.image = UIImage(named: "united-kingdom")
            leftCurrentRate.text = "43.03 / 44.05"
        case .Poland:
            leftCurrencyName.text = CountryCourency.Poland.rawValue
            self.leftImageCurrency.image = UIImage(named: "poland")
            leftCurrentRate.text = "7.4 / 7.8"
        case .ChechRepublic:
            leftCurrencyName.text = CountryCourency.ChechRepublic.rawValue
            self.leftImageCurrency.image = UIImage(named: "czech-republic")
            leftCurrentRate.text = "1.42 / 1.50"
        case .France:
            leftCurrencyName.text = CountryCourency.France.rawValue
            self.leftImageCurrency.image = UIImage(named: "france")
            leftCurrentRate.text = "1.42 / 1.50"
        }
        
        switch secondCurrency {
        case .USA:
            rightCurrencyName.text = CountryCourency.USA.rawValue
            self.rightImageCurrency.image = UIImage(named: "united-states")
            rightCurrentRate.text = "36.65 / 37.50"
        case .GreatBritain:
            rightCurrencyName.text = CountryCourency.GreatBritain.rawValue
            self.rightImageCurrency.image = UIImage(named: "united-kingdom")
            rightCurrentRate.text = "43.03 / 44.05"
        case .Poland:
            rightCurrencyName.text = CountryCourency.Poland.rawValue
            self.rightImageCurrency.image = UIImage(named: "poland")
            rightCurrentRate.text = "7.4 / 7.8"
        case .ChechRepublic:
            rightCurrencyName.text = CountryCourency.ChechRepublic.rawValue
            self.rightImageCurrency.image = UIImage(named: "czech-republic")
            rightCurrentRate.text = "1.42 / 1.50"
        case .France:
            rightCurrencyName.text = CountryCourency.France.rawValue
            self.rightImageCurrency.image = UIImage(named: "france")
            rightCurrentRate.text = "1.42 / 1.50"
        }
    }
    

    
    
}

extension UIView {

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
