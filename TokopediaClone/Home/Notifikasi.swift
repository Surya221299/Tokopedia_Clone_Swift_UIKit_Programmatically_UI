//
//  HomeSubView.swift
//  TokopediaClone
//
//  Created by Bamantara S on 28/02/24.
//

import UIKit

class Notifikasi: UIViewController {
    
    let backIcon = UIImage(named: "ic_back")?.withRenderingMode(.alwaysOriginal)
    let cartIcon = UIImage(named: "ic_cart")?.withRenderingMode(.alwaysOriginal)
    let menuIcon = UIImage(named: "ic_menu")?.withRenderingMode(.alwaysOriginal)
    let comingSoonLabel = UILabel()
    
    // for hide UITabBar in subView
    override var hidesBottomBarWhenPushed: Bool {
        get {
            return navigationController?.topViewController == self
        }
        set {
            super.hidesBottomBarWhenPushed = newValue
        }
    }

    // MARK: Everything in Inbox View
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        view.backgroundColor = .white
        customNavigation()
        style()
        layout()
    }

}

extension Notifikasi {
    func style() {
        view.addSubview(comingSoonLabel)
        comingSoonLabel.translatesAutoresizingMaskIntoConstraints = false
        comingSoonLabel.text = "Notifikasi\nComing Soon!"
        comingSoonLabel.textAlignment = .center
        comingSoonLabel.numberOfLines = 0
        comingSoonLabel.lineBreakMode = .byWordWrapping
        comingSoonLabel.font = UIFont.boldSystemFont(ofSize: 36.0)
        comingSoonLabel.textColor = UIColor.black
        
    }
}

extension Notifikasi {
    
    func layout() {
        NSLayoutConstraint.activate([
            comingSoonLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            comingSoonLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])
    }
}

//MARK: Extension for method
extension Notifikasi {
    
    @objc func popnav() {
        self.navigationController?.popViewController(animated: true)
        
    }
    
    @objc func printTes() {
        print("12345")
        
    }
}

// MARK: method for custom back button navigation
extension Notifikasi {
    
    func customNavigation() {
        // custom back button and title in subView
        let leftInsect = 30
        let leftLabel = UILabel(frame: CGRect(x: 0, y: 0, width: view.frame.width - CGFloat(leftInsect), height: view.frame.height))
                leftLabel.text = "Notifikasi"
                leftLabel.textColor = UIColor.black
                leftLabel.font = UIFont.boldSystemFont(ofSize: 18)
                navigationItem.titleView = leftLabel
        
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(image: backIcon, style: .plain, target: self, action: #selector(popnav))
        
        // 2 icon on right navigationBar
        // use this troublesome var button so that the spacing is exactly the same as the original Tokopedia application
        let searchBtn: UIButton = UIButton(type: UIButton.ButtonType.custom)
        searchBtn.setImage(menuIcon, for: .normal)
        searchBtn.addTarget(self, action: #selector(printTes), for: .touchUpInside)
        searchBtn.frame = CGRectMake(0, 0, 32, 32)
        let searchBarBtn = UIBarButtonItem(customView: searchBtn)
        
        // use this troublesome var button so that the spacing is exactly the same as the original Tokopedia application
        let clipBtn: UIButton = UIButton(type: UIButton.ButtonType.custom)
        clipBtn.setImage(cartIcon, for: .normal)
        clipBtn.addTarget(self, action: #selector(printTes), for: .touchUpInside)
        clipBtn.frame = CGRectMake(0, 0, 32, 32)
        let clipBarBtn = UIBarButtonItem(customView: clipBtn)
        
        // use this for double right icon on navigationBar
        self.navigationItem.setRightBarButtonItems([searchBarBtn, clipBarBtn], animated: false)
    }
}
