//
//  Extension.swift
//  Bomb
//
//  Created by Мявкo on 7.08.23.
//

import UIKit

extension UIViewController {
    
    func setBackground() {
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "background")
        backgroundImage.contentMode =  UIView.ContentMode.scaleAspectFill
        view.insertSubview(backgroundImage, at: 0)
    }
}

extension UILabel {

    func addSpaceBetweenLines(spacingValue: CGFloat = 2) {
        guard let textString = text else { return }

        let attributedString = NSMutableAttributedString(string: textString)
        
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = spacingValue

        attributedString.addAttribute(
            .paragraphStyle,
            value: paragraphStyle,
            range: NSRange(location: 0, length: attributedString.length
        ))
        attributedText = attributedString
    }
}

extension UIView {

    func drawShadow() {
        self.layer.shadowColor = UIColor.darkGray.cgColor
        self.layer.shadowOffset = CGSize(width: 0.0, height: 4.0)
        self.layer.masksToBounds = false
        self.layer.shadowRadius = 2
        self.layer.shadowOpacity = 0.5

        self.layer.borderColor = UIColor.black.cgColor
        self.layer.borderWidth = 1.0
    }
}