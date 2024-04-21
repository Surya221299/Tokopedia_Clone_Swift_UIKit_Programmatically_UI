//
//  Inbox.swift
//  TokopediaClone
//
//  Created by Bamantara S on 29/02/24.
//

import UIKit

class Inbox: UIViewController {
    
    let backIcon = UIImage(named: "ic_back")?.withRenderingMode(.alwaysOriginal)
    let bellIcon = UIImage(named: "ic_bell")?.withRenderingMode(.alwaysOriginal)
    let comingSoonLabel = UILabel()
    
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

extension Inbox {
    func style() {
        view.addSubview(comingSoonLabel)
        comingSoonLabel.translatesAutoresizingMaskIntoConstraints = false
        comingSoonLabel.text = "Inbox\nComing Soon!"
        comingSoonLabel.textAlignment = .center
        comingSoonLabel.numberOfLines = 0
        comingSoonLabel.lineBreakMode = .byWordWrapping
        comingSoonLabel.font = UIFont.boldSystemFont(ofSize: 36.0)
        comingSoonLabel.textColor = UIColor.black
        
    }
}

extension Inbox {
    
    func layout() {
        NSLayoutConstraint.activate([
            comingSoonLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            comingSoonLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])
    }
}


//MARK: Extension for method
extension Inbox {
    
    @objc func popnav() {
        self.navigationController?.popViewController(animated: true)
        
    }
    
    @objc func printTes() {
        print("12345")
        
    }
}

// MARK: method for custom back button navigation
extension Inbox {
    
    func customNavigation() {
        
        // MARK: custom back button and title in subView
        let leftInsect = 30
        let leftLabel = UILabel(frame: CGRect(x: 0, y: 0, width: view.frame.width - CGFloat(leftInsect), height: view.frame.height))
                leftLabel.text = "Inbox"
                leftLabel.textColor = UIColor.black
                leftLabel.font = UIFont.boldSystemFont(ofSize: 18)
                navigationItem.titleView = leftLabel
        
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(image: backIcon, style: .plain, target: self, action: #selector(popnav))
        
        // MARK: navigationBar single Right Icon
        // use this troublesome var button so that the spacing is exactly the same as the original Tokopedia application
        let searchBtn: UIButton = UIButton(type: UIButton.ButtonType.custom)
        searchBtn.setImage(bellIcon, for: .normal)
        searchBtn.addTarget(self, action: #selector(printTes), for: .touchUpInside)
        searchBtn.frame = CGRectMake(0, 0, 32, 32)
        let searchBarBtn = UIBarButtonItem(customView: searchBtn)
        
        // use this for single right icon on navigationBar
        self.navigationItem.rightBarButtonItem = searchBarBtn
        
    }
}
