//
//  NotificationCenterSourceViewController.swift
//  PassingDataBetweenViewControllers
//
//  Created by Anjali Sikarwar on 29/01/25.
//

import UIKit

class NotificationCenterSourceViewController: UIViewController {

    @IBOutlet weak var textView: UITextField!
    var userData: String = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("View Did Disappear")
        NotificationCenter.default.post(name: Notification.Name("PassDataNotification"), object: nil, userInfo: ["data": userData])
    }
    
    @IBAction func sendDataButtonClicked(_ sender: Any) {
        print("Button clicked")
        if self.textView != nil && textView.text?.count != 0 {
            self.userData = textView.text ?? "Default Text"
            let destinationvc = storyboard?.instantiateViewController(withIdentifier: "NotificationCenterDestinationViewController") as! NotificationCenterDestinationViewController
            navigationController?.pushViewController(destinationvc, animated: true)
        }else {
            let alertBox = UIAlertController(title: "Warning", message: "Please Enter Something In White Box", preferredStyle: .alert)
            alertBox.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
            present(alertBox, animated: true)
        }
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        print("Prepare")
//    }
}
