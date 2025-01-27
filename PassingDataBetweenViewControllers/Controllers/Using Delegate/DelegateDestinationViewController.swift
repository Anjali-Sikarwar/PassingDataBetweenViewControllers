//
//  DelegateDestinationViewController.swift
//  PassingDataBetweenViewControllers
//
//  Created by Anjali Sikarwar on 27/01/25.
//

import UIKit

protocol DataSendingProtocal {
    func sendDataToAnotherViewController(data: String)
}

class DelegateDestinationViewController: UIViewController{
    
    @IBOutlet weak var getDataTextBox: UITextField!
    
    var delegate: DataSendingProtocal? = nil

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func sendButtonClicked(_ sender: Any) {
        if self.delegate != nil && getDataTextBox.text != nil {
            let dataToBeSent = self.getDataTextBox.text
            self.delegate?.sendDataToAnotherViewController(data: dataToBeSent!)
            dismiss(animated: true, completion: nil)
        }
    }
    
}
