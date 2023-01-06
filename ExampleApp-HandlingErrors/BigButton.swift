//
//  BigButton.swift
//  ExampleApp-Signup
//
//  Created by Ben Scheirman on 8/19/20.
//

import UIKit

@IBDesignable
class BigButton: UIButton {
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        configure()
    }
    
    private func configure() {
        setBackgroundImage(image(with: .systemBlue), for: .normal)
        setTitleColor(.white, for: .normal)
        titleLabel?.font = UIFont.preferredFont(forTextStyle: .headline)
        layer.masksToBounds = true
        layer.cornerRadius = 12
    }
    
    override func prepareForInterfaceBuilder() {
        configure()
    }
        
    private func image(with color: UIColor) -> UIImage {
        let size = CGSize(width: 1, height: 1)
        let renderer = UIGraphicsImageRenderer(size: size)
        return renderer.image { (context) in
            context.cgContext.setFillColor(color.cgColor)
            context.cgContext.fill(CGRect(origin: .zero, size: size))
        }
    }
}
