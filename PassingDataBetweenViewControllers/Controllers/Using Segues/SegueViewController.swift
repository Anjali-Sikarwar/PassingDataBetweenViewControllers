//
//  ViewController.swift
//  PassingDataBetweenViewControllers
//
//  Created by Anjali Sikarwar on 24/01/25.
//

import UIKit

class SegueViewController: UIViewController {

    @IBOutlet weak var textView: UITextField!
    @IBOutlet weak var doneButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if textView.text?.count == 0 {
            let alertBox = UIAlertController()
            alertBox.title = "Please Enter Something In White Box"
            alertBox.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
            show(alertBox, sender: self)
        }else {
            if segue.identifier == "SegueViewController" {
                if let destinationVc = segue.destination as? SegueSecondViewController {
                    destinationVc.userInput = self.textView.text!
                }
            }
        }
        
        
    }
    
    

}

