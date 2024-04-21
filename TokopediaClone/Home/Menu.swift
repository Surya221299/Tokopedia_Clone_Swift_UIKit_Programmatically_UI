//
//  Menu.swift
//  TokopediaClone
//
//  Created by Bamantara S on 29/02/24.
//

import UIKit

class Menu: UIViewController {
    
    let closeIcon = UIImage(named: "ic_back")?.withRenderingMode(.alwaysOriginal)
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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
extension Menu {
    func style() {
        view.addSubview(comingSoonLabel)
        comingSoonLabel.translatesAutoresizingMaskIntoConstraints = false
        comingSoonLabel.text = "Menu\nComing Soon!"
        comingSoonLabel.textAlignment = .center
        comingSoonLabel.numberOfLines = 0
        comingSoonLabel.lineBreakMode = .byWordWrapping
        comingSoonLabel.font = UIFont.boldSystemFont(ofSize: 36.0)
        comingSoonLabel.textColor = UIColor.black
        
    }
}

extension Menu {
    
    func layout() {
        NSLayoutConstraint.activate([
            comingSoonLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            comingSoonLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])
    }
}



extension Menu {
    
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

extension Menu {
    
    func customNavigation() {
        // custom back button and title in subView
        let leftInsect = 30
        let leftLabel = UILabel(frame: CGRect(x: 0, y: 0, width: view.frame.width - CGFloat(leftInsect), height: view.frame.height))
                leftLabel.text = "Menu Utama"
                leftLabel.textColor = UIColor.black
                leftLabel.font = UIFont.boldSystemFont(ofSize: 18)
                navigationItem.titleView = leftLabel
        
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(image: closeIcon, style: .plain, target: self, action: #selector(popnav))

    }
}
