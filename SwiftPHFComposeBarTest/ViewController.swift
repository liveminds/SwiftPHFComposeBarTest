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
        composeBarView.delegate = self
        return composeBarView
    }

    override var inputAccessoryView: UIView {
        return self.composeBar
    }

    override func canBecomeFirstResponder() -> Bool {
        return true
    }

    override func viewDidAppear(animated: Bool) {
        print("viewDidAppear self \(self)")
        print("composeBar.delegate \(self.composeBar.delegate)")
        print("composeBar.textView.delegate \(self.composeBar.textView.delegate)")
        print("composeBar.canBecomeFirstResponder() \(self.composeBar.canBecomeFirstResponder())")
        print("composeBar.textView.canBecomeFirstResponder() \(self.composeBar.textView.canBecomeFirstResponder())")
        let res = self.composeBar.becomeFirstResponder()
        print("composeBar.becomeFirstResponder() \(res)")
        print("composeBar.isFirstResponder() \(self.composeBar.isFirstResponder())")
        print("composeBar.textView.isFirstResponder() \(self.composeBar.textView.isFirstResponder())")
    }


}

