//  SourceViewController.swift
//  PassingDataBetweenViewControllers
//
//  Created by Anjali Sikarwar on 27/01/25.
//

import UIKit

class SourceViewController: UIViewController {

    @IBOutlet weak var sourceTextView: UITextField!
    @IBOutlet weak var doneButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destinationVc = storyboard?.instantiateViewController(withIdentifier: "DestinationViewController") as? DestinationViewController {
            destinationVc.userData = sourceTextView.text ?? "Default Text"
            destinationVc.callback = {
                return self.sourceTextView.text ?? "Default Text"
            }
            navigationController?.pushViewController(destinationVc, animated: true)
        }
        
    }
    
}
