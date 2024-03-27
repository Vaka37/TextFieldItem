// The Swift Programming Language
// https://docs.swift.org/swift-book

import UIKit
public class AutorizationTextField: UITextField {
    public func makeLoginTextField(placeholder: String, borderColor: CGColor, leftIcon: UIImage) -> UITextField {
        self.placeholder = placeholder
        self.backgroundColor = .white
        self.layer.borderWidth = 1
        self.layer.cornerRadius = 12
        self.layer.borderColor = borderColor
        let leftView = UIView()
        let imageView = UIImageView()
        leftView.addSubview(imageView)
        leftView.frame.size = CGSize(width: 30, height: 30)
        imageView.frame.size = CGSize(width: 18, height: 18)
        imageView.center = leftView.center
        imageView.image = leftIcon
        self.leftView = leftView
        self.leftViewMode = .always
        return self
    }
}
