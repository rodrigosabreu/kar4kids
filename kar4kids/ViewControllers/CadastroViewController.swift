//
//  CadastroViewController.swift
//  kar4kids
//
//  Created by Rodrigo Abreu on 01/02/2018.
//  Copyright © 2018 KAR4KIDS. All rights reserved.
//

import UIKit

class CadastroViewController: UIViewController, UITextFieldDelegate, UIScrollViewDelegate {
    

   
    
    @IBOutlet var nome: UITextField!
    
    func delegateCampos(){
        
       
       
        

        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: .UIKeyboardWillShow, object: nil)
       
        
        
       
    }
    
    func hideKeyboard() {

        
    }
    
   var keyboardHeight = 0
    
    @objc func keyboardWillShow(notification: NSNotification) {
        if let keyboardSize = (notification.userInfo?[UIKeyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue {
            self.keyboardHeight = Int(keyboardSize.height)
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
       
        
        
        
    }
    
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        
       
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.delegateCampos()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        self.navigationController?.navigationBar.isTranslucent = false
        
    }
    
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
        print("touched")
    }
    
   
    
   
    
    
    
}
