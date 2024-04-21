//
//  ControllerReusableButton.swift
//  TokopediaClone
//
//  Created by Bamantara S on 01/03/24.
//

import UIKit

class ControllerReusableButton: UIViewController {
    
    let button = UIButton(frame: CGRect(x: 20, y: 20, width: 200, height: 60))
//     myView.addSubview(button)

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        button.setTitle("Email", for: .normal)
        button.backgroundColor = .white
        button.setTitleColor(UIColor.black, for: .normal)
        button.addTarget(self, action: #selector(self.buttonTapped), for: .touchUpInside)
        view.addSubview(button)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    @objc func buttonTapped(sender : UIButton) {
        //Write button action here
        print("Button Tapped")
    }

}
