//
//  HomeSubView.swift
//  TokopediaClone
//
//  Created by Bamantara S on 20/04/24.
//

import UIKit

class HomeSubView: UIViewController {
    
    let backIcon = UIImage(named: "ic_back")?.withRenderingMode(.alwaysOriginal)
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

extension HomeSubView {
    func style() {
        view.addSubview(comingSoonLabel)
        comingSoonLabel.translatesAutoresizingMaskIntoConstraints = false
        comingSoonLabel.text = "Home SubView\nComing Soon!"
        comingSoonLabel.textAlignment = .center
        comingSoonLabel.numberOfLines = 0
        comingSoonLabel.lineBreakMode = .byWordWrapping
        comingSoonLabel.font = UIFont.boldSystemFont(ofSize: 36.0)
        comingSoonLabel.textColor = UIColor.black
        
    }
}

extension HomeSubView {
    
    func layout() {
        NSLayoutConstraint.activate([
            comingSoonLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            comingSoonLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])
    }
}

//MARK: Extension for method
extension HomeSubView {
    
    @objc func popnav() {
        self.navigationController?.popViewController(animated: true)
        
    }
    
    @objc func printTes() {
        print("12345")
        
    }
}

// MARK: method for custom back button navigation
extension HomeSubView {
    
    func customNavigation() {
        
        // MARK: custom back button and title in subView
        let leftInsect = 30
        let leftLabel = UILabel(frame: CGRect(x: 0, y: 0, width: view.frame.width - CGFloat(leftInsect), height: view.frame.height))
                leftLabel.text = "Home Sub View"
                leftLabel.textColor = UIColor.black
                leftLabel.font = UIFont.boldSystemFont(ofSize: 18)
                navigationItem.titleView = leftLabel
        
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(image: backIcon, style: .plain, target: self, action: #selector(popnav))
        
        
    }
}
