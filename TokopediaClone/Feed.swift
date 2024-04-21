//
//  Feed.swift
//  TokopediaClone
//
//  Created by Bamantara S on 04/02/24.
//

import UIKit

class Feed: UIViewController {
    
    let comingSoonLabel = UILabel()
    
    // MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .black
        self.navigationController?.navigationBar.isHidden = true
        
        style()
        layout()
        
    }
    
}

extension Feed {
    func style() {
        view.addSubview(comingSoonLabel)
        comingSoonLabel.translatesAutoresizingMaskIntoConstraints = false
        comingSoonLabel.text = "Feed \n Coming Soon!\nSee Tab Bar background Below!"
        comingSoonLabel.textAlignment = .center
        comingSoonLabel.numberOfLines = 0
        comingSoonLabel.lineBreakMode = .byWordWrapping
        comingSoonLabel.font = UIFont.boldSystemFont(ofSize: 28.0)
        comingSoonLabel.textColor = UIColor.white
        
    }
}

extension Feed {
    
    func layout() {
        NSLayoutConstraint.activate([
            comingSoonLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            comingSoonLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])
    }
}
