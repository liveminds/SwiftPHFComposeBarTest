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

    var composeBar: PHFComposeBarView {
        let viewBounds = self.view.bounds
        let frame = CGRectMake(0.0, viewBounds.size.height - PHFComposeBarViewInitialHeight, viewBounds.size.width, PHFComposeBarViewInitialHeight)
        let composeBarView = PHFComposeBarView(frame: frame)
        return composeBarView
    }

    override var inputAccessoryView: UIView {
        return self.composeBar
    }

    override func canBecomeFirstResponder() -> Bool {
        return true
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.composeBar.delegate = self;
        self.composeBar.removeFromSuperview()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

