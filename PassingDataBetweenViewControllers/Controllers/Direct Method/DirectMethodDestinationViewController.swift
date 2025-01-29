//
//  DirectMethodDestinationViewController.swift
//  PassingDataBetweenViewControllers
//
//  Created by Anjali Sikarwar on 29/01/25.
//

import UIKit

class DirectMethodDestinationViewController: UIViewController {

    @IBOutlet weak var destinationTextView: UITextField!
    var userData = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        self.destinationTextView.text = userData
    }
    
    @IBAction func backButtonClicked(_ sender: Any) {
        let sourcevc = storyboard?.instantiateViewController(withIdentifier: "DirectMethodSourceViewController") as? DirectMethodSourceViewController
        navigationController?.popViewController(animated: true)
    }
    
}
