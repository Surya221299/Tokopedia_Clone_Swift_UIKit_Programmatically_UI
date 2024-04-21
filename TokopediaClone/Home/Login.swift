//
//  Login.swift
//  TokopediaClone
//
//  Created by Bamantara S on 20/04/24.
//

import UIKit

class Login: UIViewController {
    
    let backIcon = UIImage(named: "ic_back")?.withRenderingMode(.alwaysOriginal)
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

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .white
        customNavigation()
        style()
        layout()
    }

}

extension Login {
    func style() {
        view.addSubview(comingSoonLabel)
        comingSoonLabel.translatesAutoresizingMaskIntoConstraints = false
        comingSoonLabel.text = "Login\nComing Soon!"
        comingSoonLabel.textAlignment = .center
        comingSoonLabel.numberOfLines = 0
        comingSoonLabel.lineBreakMode = .byWordWrapping
        comingSoonLabel.font = UIFont.boldSystemFont(ofSize: 36.0)
        comingSoonLabel.textColor = UIColor.black
        
    }
}

extension Login {
    
    func layout() {
        NSLayoutConstraint.activate([
            comingSoonLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            comingSoonLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])
    }
}



extension Login {
    
    @objc func popnav() {
        let transition:CATransition = CATransition()
                transition.duration = 0.4
                transition.timingFunction = CAMediaTimingFunction(name:CAMediaTimingFunctionName.easeInEaseOut)
                transition.type = CATransitionType.reveal
                transition.subtype = CATransitionSubtype.fromBottom
                self.navigationController?.view.layer.add(transition, forKey: kCATransition)
        self.navigationController?.popViewController(animated: false)
        
    }
    
    @objc func printTes() {
        print("12345")
        
    }
}

extension Login {
    
    func customNavigation() {
        
        // MARK: custom back button and title in subView
        let leftInsect = 30
        let leftLabel = UILabel(frame: CGRect(x: 0, y: 0, width: view.frame.width - CGFloat(leftInsect), height: view.frame.height))
                leftLabel.text = "Login"
                leftLabel.textColor = UIColor.black
                leftLabel.font = UIFont.boldSystemFont(ofSize: 18)
                navigationItem.titleView = leftLabel
        
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(image: backIcon, style: .plain, target: self, action: #selector(popnav))
        
    }
}


