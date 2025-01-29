//
//  DirectMethodSourceViewController.swift
//  PassingDataBetweenViewControllers
//
//  Created by Anjali Sikarwar on 29/01/25.
//

import UIKit

class DirectMethodSourceViewController: UIViewController {

    @IBOutlet weak var SourceTextView: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func sendButtonClicked(_ sender: Any) {
        if SourceTextView != nil && SourceTextView.text?.count != 0 {
            if let destinationvc = storyboard?.instantiateViewController(withIdentifier: "DirectMethodDestinationViewController") as? DirectMethodDestinationViewController {
                destinationvc.userData = "Anjali Sikarwar"
                navigationController?.pushViewController(destinationvc, animated: true)
            }
        }else {
            let alertBox = UIAlertController(title: "Waring", message: "Please Enter Something In White Box", preferredStyle: .alert)
            alertBox.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
            present(alertBox, animated: true)
        }
        
    }
    
}
