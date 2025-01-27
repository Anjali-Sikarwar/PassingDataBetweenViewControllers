//
//  DelegateSourceViewController.swift
//  PassingDataBetweenViewControllers
//
//  Created by Anjali Sikarwar on 27/01/25.
//

import UIKit

class DelegateSourceViewController: UIViewController, DataSendingProtocal  {
    
    @IBOutlet weak var receivedDataLabel: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    func sendDataToAnotherViewController(data: String) {
        self.receivedDataLabel.text = data
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "DelegateSegue" {
            let secondVC: DelegateDestinationViewController = segue.destination as! DelegateDestinationViewController
            secondVC.delegate = self
        }
    }


}
