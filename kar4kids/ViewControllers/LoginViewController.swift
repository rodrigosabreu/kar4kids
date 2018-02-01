//
//  LoginViewController.swift
//  kar4kids
//
//  Created by Rodrigo Abreu on 01/02/2018.
//  Copyright © 2018 KAR4KIDS. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: false)
        self.navigationController?.navigationBar.isTranslucent = false
    }
    
}
