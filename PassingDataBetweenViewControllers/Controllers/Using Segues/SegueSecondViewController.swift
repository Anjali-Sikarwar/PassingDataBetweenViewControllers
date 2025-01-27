//
//  SegueSecondViewController.swift
//  PassingDataBetweenViewControllers
//
//  Created by Anjali Sikarwar on 25/01/25.
//

import UIKit

class SegueSecondViewController: UIViewController {
    @IBOutlet weak var dataLabel: UILabel!
    @IBOutlet weak var backButton: UIButton!
    var userInput: String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        self.dataLabel.text = userInput
    }


}
