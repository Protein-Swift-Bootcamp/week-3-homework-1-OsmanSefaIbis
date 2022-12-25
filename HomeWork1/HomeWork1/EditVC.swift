//
//  EditVC.swift
//  HomeWork1
//
//  Created by Sefa İbiş on 25.12.2022.
//

import UIKit

protocol LabelChangedDelegate: AnyObject{
    func DidChanged(_ id: String?,_ name: String?)
}

class EditVC: UIViewController {

    @IBOutlet weak var identificationLabel: UITextField!
    @IBOutlet weak var nameLabel: UITextField!
    @IBOutlet weak var cityLabel: UITextField!
    
    
    var changeHandler: ((String?) -> ())?
    
    weak var delegate: LabelChangedDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func submitTapped(_ sender: Any) {
        delegate?.DidChanged(identificationLabel.text, nameLabel.text)
        changeHandler?(cityLabel.text)
        dismiss(animated: true)
    }
    
}
