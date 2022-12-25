//
//  EditVC.swift
//  HomeWork1
//
//  Created by Sefa İbiş on 25.12.2022.
//

import UIKit

protocol LabelChangedDelegate: AnyObject{
    func DidChanged(_ id: String?,_ name: String?,_ city: String?)
}

class EditVC: UIViewController {

    @IBOutlet weak var identificationLabel: UITextField!
    @IBOutlet weak var nameLabel: UITextField!
    @IBOutlet weak var cityLabel: UITextField!
    
    weak var delegate: LabelChangedDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func submitTapped(_ sender: Any) {
        delegate?.DidChanged(identificationLabel.text, nameLabel.text, cityLabel.text)
        dismiss(animated: true)
    }

}
