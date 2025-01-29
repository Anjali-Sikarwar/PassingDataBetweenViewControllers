//
//  NotificationCenterDestinationViewController.swift
//  PassingDataBetweenViewControllers
//
//  Created by Anjali Sikarwar on 29/01/25.
//

import UIKit

class NotificationCenterDestinationViewController: UIViewController {

    @IBOutlet weak var myTextView: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Destination View did load")
        NotificationCenter.default.addObserver(self, selector: #selector(handlerNotification(_:)), name: Notification.Name("PassDataNotification"), object: nil)
    }
    
    @objc func handlerNotification(_ notification: Notification) {
        print("Inside handler notification")
        if let data = notification.userInfo?["data"] as? String {
            print("Data: \(data)")
            self.myTextView.text = data
        }
    }
}
