//
//  Transaksi.swift
//  TokopediaClone
//
//  Created by Bamantara S on 04/02/24.
//

import UIKit

class Transaksi: UIViewController {
    
    // MARK: Properties
    let comingSoonLabel = UILabel()

    // MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .white
        style()
        layout()
    }
}

extension Transaksi {
    
    private func style() {
        view.addSubview(comingSoonLabel)
        comingSoonLabel.translatesAutoresizingMaskIntoConstraints = false
        comingSoonLabel.text = "Transaksi \n Coming Soon!"
        comingSoonLabel.textAlignment = .center
        comingSoonLabel.numberOfLines = 0
        comingSoonLabel.lineBreakMode = .byWordWrapping
        comingSoonLabel.font = UIFont.boldSystemFont(ofSize: 28.0)
        comingSoonLabel.textColor = UIColor.black
    }
    
    private func layout() {
        
        NSLayoutConstraint.activate([
            comingSoonLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            comingSoonLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])
        
    }
    
}


