//
//  ViewController.swift
//  SwiftPHFComposeBarTest
//
//  Created by James Bebbington on 06/07/2015.
//  Copyright © 2015 Liveminds. All rights reserved.
//

import UIKit
import PHFComposeBarView

class ViewController: UIViewController, PHFComposeBarViewDelegate {

    @IBOutlet weak var composeBarView: PHFComposeBarView!

    override func viewDidLoad() {
        super.viewDidLoad()
        composeBarView.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func canBecomeFirstResponder() -> Bool {
        return true
    }

    override var inputAccessoryView: UIView {
        composeBarView.removeFromSuperview()
        return composeBarView
    }

}
