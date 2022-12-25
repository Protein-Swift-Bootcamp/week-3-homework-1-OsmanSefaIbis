//
//  ViewController.swift
//  HomeWork1
//
//  Created by Sefa İbiş on 24.12.2022.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var identificationLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var editButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func editButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "ToEditVC", sender: nil)
    }
    
    
}

