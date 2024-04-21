//
//  OfficialStore.swift
//  TokopediaClone
//
//  Created by Bamantara S on 04/02/24.
//

import UIKit

class OfficialStore: UIViewController {
    
    let comingSoonLabel = UILabel()

    // MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .white
        self.navigationController?.navigationBar.isHidden = true
        
        style()
        layout()
    }
    
}

extension OfficialStore {
    func style() {
        view.addSubview(comingSoonLabel)
        comingSoonLabel.translatesAutoresizingMaskIntoConstraints = false
        comingSoonLabel.text = "Official Store \n Coming Soon!"
        comingSoonLabel.textAlignment = .center
        comingSoonLabel.numberOfLines = 0
        comingSoonLabel.lineBreakMode = .byWordWrapping
        comingSoonLabel.font = UIFont.boldSystemFont(ofSize: 28.0)
        comingSoonLabel.textColor = UIColor.black
        
    }
}

extension OfficialStore {
    
    func layout() {
        NSLayoutConstraint.activate([
            comingSoonLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            comingSoonLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])
    }
}



