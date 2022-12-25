//
//  ViewController.swift
//  HomeWork1
//
//  Created by Sefa İbiş on 24.12.2022.
//

import UIKit

class ViewController: UIViewController {
    
    // readMe: Identification No and Name Labels are with delegate pattern, city label is with closure.
    
    @IBOutlet weak var identificationLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func editButtonTapped(_ sender: Any) {
        let destinationVC = EditVC()
        destinationVC.changeHandler = { sefa in
            self.cityLabel.text = sefa
        }
        destinationVC.delegate = self
        destinationVC.modalPresentationStyle = .pageSheet
        present(destinationVC, animated: true)
    }
}
extension ViewController: LabelChangedDelegate {
    func DidChanged(_ id: String?, _ name: String?) {
        identificationLabel.text = id
        nameLabel.text = name
    }

}


