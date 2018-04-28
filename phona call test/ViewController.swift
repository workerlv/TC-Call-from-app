//
//  ViewController.swift
//  phona call test
//
//  Created by Arturs Vitins on 25/04/2018.
//  Copyright © 2018 Arturs Vitins. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputOutlet: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func callBtnAction(_ sender: Any) {
                
        if inputOutlet.text != "" {
            
            let url: NSURL = URL(string: "TEL://\(inputOutlet.text!)")! as NSURL
            UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
            
        } else {
            
            let alert = UIAlertController(title: "No number entered", message: "Please... please put at least one number", preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .default, handler: { (alert) in
                self.dismiss(animated: true, completion: nil)
            })
            alert.addAction(action)
            present(alert, animated: true, completion: nil)
            
        }
    }
    
}//

