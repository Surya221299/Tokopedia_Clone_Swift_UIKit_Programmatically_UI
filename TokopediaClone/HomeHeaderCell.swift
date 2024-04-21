//
//  HomeHeaderCell.swift
//  TokopediaClone
//
//  Created by Bamantara S on 06/02/24.
//

import UIKit

class HomeHeaderCell: UICollectionViewCell {
    
    // MARK: Properties
    static let identifier = "HomeHeaderCell"
    
    // MARK: Properties
    let textField = UITextField()
    
    let mail = UIImageView(image: UIImage(named: "ic_mail"))
    let bell = UIImageView(image: UIImage(named: "ic_bell"))
    let cart = UIImageView(image: UIImage(named: "ic_cart"))
    let menu = UIImageView(image: UIImage(named: "ic_menu"))
    
    override init(frame: CGRect) {
        super.init(frame: frame)
//        configureTextField()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
//
//extension HomeHeaderCell {
//
//    private func configureTextField() {
//
//        self.addSubview(textField)
//        textField.layer.borderWidth = 1 // just to make it more visible on the screen
//        textField.attributedPlaceholder = NSAttributedString(string: " Cari di Tokopedia", attributes: [NSAttributedString.Key.foregroundColor : UIColor.gray])
//
//        textField.layer.cornerRadius = 10
//        textField.layer.borderColor = UIColor(named: "bg_border_color")?.cgColor
//
//
//        textField.leftViewMode = UITextField.ViewMode.always
//        textField.leftViewMode = .always
////        textField.setLeftIcon(UIImage(named: "ic_search")!)
//        textField.translatesAutoresizingMaskIntoConstraints = false
//
//        self.addSubview(mail)
//        mail.translatesAutoresizingMaskIntoConstraints = false
//
//        self.addSubview(bell)
//        bell.translatesAutoresizingMaskIntoConstraints = false
//
//        self.addSubview(cart)
//        cart.translatesAutoresizingMaskIntoConstraints = false
//
//        self.addSubview(menu)
//        menu.translatesAutoresizingMaskIntoConstraints = false
//
//        NSLayoutConstraint.activate([
//            textField.centerXAnchor.constraint(equalTo: self.centerXAnchor),
//            textField.centerYAnchor.constraint(equalTo: self.centerYAnchor),
//            textField.heightAnchor.constraint(equalToConstant: 36),
//            textField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
//            textField.trailingAnchor.constraint(equalTo: mail.leadingAnchor, constant: -12),
//
//            mail.widthAnchor.constraint(equalToConstant: 24),
//            mail.heightAnchor.constraint(equalToConstant: 24),
//            mail.centerYAnchor.constraint(equalTo: textField.centerYAnchor),
//            mail.trailingAnchor.constraint(equalTo: bell.leadingAnchor, constant: -12),
//
//            bell.widthAnchor.constraint(equalToConstant: 24),
//            bell.heightAnchor.constraint(equalToConstant: 24),
//            bell.centerYAnchor.constraint(equalTo: textField.centerYAnchor),
//            bell.trailingAnchor.constraint(equalTo: cart.leadingAnchor, constant: -12),
//
//            cart.widthAnchor.constraint(equalToConstant: 24),
//            cart.heightAnchor.constraint(equalToConstant: 24),
//            cart.centerYAnchor.constraint(equalTo: textField.centerYAnchor),
//            cart.trailingAnchor.constraint(equalTo: menu.leadingAnchor, constant: -12),
//
//            menu.widthAnchor.constraint(equalToConstant: 24),
//            menu.heightAnchor.constraint(equalToConstant: 24),
//            menu.centerYAnchor.constraint(equalTo: textField.centerYAnchor),
//            menu.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -24),
//        ])
//    }
//}

//// MARK: method for padding left in text field
//extension UITextField {
//
// /// set icon of 20x20 with left padding of 8px
// func setLeftIcon(_ icon: UIImage) {
//
//    let padding = 8
//    let size = 16
//
//    let outerView = UIView(frame: CGRect(x: 0, y: 0, width: size+padding, height: size) )
//    let iconView  = UIImageView(frame: CGRect(x: padding, y: 0, width: size, height: size))
//    iconView.image = icon
//    outerView.addSubview(iconView)
//
//    leftView = outerView
//    leftViewMode = .always
//  }
//}
//
//// MARK: method for hide keyboard on tap anywhere
//extension UIViewController {
//    func hideKeyboardWhenTappedAround() {
//        let tap = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
//        tap.cancelsTouchesInView = false
//        view.addGestureRecognizer(tap)
//    }
//
//    @objc func dismissKeyboard() {
//        view.endEditing(true)
//    }
//}
