//
//  ViewController.swift
//  easySwiftToast
//
//  Created by wajeehulhassan on 11/24/2021.
//  Copyright (c) 2021 wajeehulhassan. All rights reserved.
//

import UIKit
import easySwiftToast

class ViewController: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showToastAction(_ sender: Any) {
      
        let message = "This is example of easy toast"
        showEasyToast(message: message)
       // showEasyToast(message: message, backroundColor: UIColor.red, textColor: UIColor.yellow, duration: 2)

    }
    
    @IBAction func showSnackbarAction(_ sender: Any) {
        
        let message = "This is example of easy snackbar"
        showEasySnackBar(message: message)
//        showEasySnackBar(message: message, backroundColor: UIColor.red, textColor: UIColor.yellow, duration: 3)
        
    }
    
    
    
}

