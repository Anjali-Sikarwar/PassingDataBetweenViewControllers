//
//  DestinationViewController.swift
//  PassingDataBetweenViewControllers
//
//  Created by Anjali Sikarwar on 27/01/25.
//

import UIKit

class DestinationViewController: UIViewController {

    @IBOutlet weak var destinationLabel: UILabel!
    @IBOutlet weak var destinationBackButton: UIButton!
    var userData: String = ""
    
    var callback: (() -> String)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("User Data: \(userData)")
        let data = callback?()
        self.destinationLabel.text = data
    }

}
