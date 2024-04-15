//
//  AlertViewController.swift
//  Alert
//
//  Created by Evita Sihombing on 15/04/24.
//

import UIKit

class AlertViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    @IBAction func simpleAlertTapped(_ sender: Any) {
        showSimpleAlert()
    }
    
    @IBAction func simpleAlertSheetTapped(_ sender: Any) {
        showSimpleActionSheet()
    }
    
    @IBAction func simpleAlertDistractiveTapped(_ sender: Any) {
        showAlertWithThreeButton()
    }
    
    
    @IBAction func alertWithMoreTapped(_ sender: Any) {
        showButtonWithDestructiveButton()
    }
    
    @IBAction func alertWithUITextfieldTapped(_ sender: Any) {
        showAlertWithTextField()
    }
    
    func showSimpleAlert() {
        let alert = UIAlertController(title: "Sign out?", message: "You will be returned to the login screen", preferredStyle: UIAlertController.Style.alert)
        
        alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertAction.Style.default, handler: {_ in
            print("Cancel Action")
        }))

        alert.addAction(UIAlertAction(title: "Sign out", style: UIAlertAction.Style.default, handler: {_ in
            print("Sign out Action")
        }))
        
        self.present(alert, animated: true, completion: nil)
    }
    
    func showSimpleActionSheet() {
        let alert = UIAlertController(title: "Options", message: "Please select an Options", preferredStyle:  .actionSheet)
        
        alert.addAction(UIAlertAction(title: "Approve", style: .default, handler: {_ in
            print("User click Approve button")
        }))

        alert.addAction(UIAlertAction(title: "Edit", style: .default, handler: {_ in
            print("User click Edit button")
        }))
        
        alert.addAction(UIAlertAction(title: "Delete", style: .destructive, handler: {_ in
            print("User click Delete button")
        }))
        
        alert.addAction(UIAlertAction(title: "Dismiss", style: .cancel, handler: {_ in
            print("User click Dismiss button")
        }))
        
        self.present(alert, animated: true) {
            print("completion block")
        }
    }
    
    func showAlertWithThreeButton() {
        let alert = UIAlertController(title: "Alert", message: "Alert with more ", preferredStyle:  UIAlertController.Style.alert)
        
        alert.addAction(UIAlertAction(title: "Default", style: .default, handler: {_ in
            print("Default Action")
        }))
        
        alert.addAction(UIAlertAction(title: "Cancel", style: .default, handler: {_ in
            print("Cancel Action")
        }))
        
        alert.addAction(UIAlertAction(title: "Destructive", style: .destructive, handler: {_ in
            print("Destructive Action")
        }))
        
        self.present(alert, animated: true)
    }
    
    func showButtonWithDestructiveButton() {
        let alert = UIAlertController(title: "Sign out?", message: "You will be returned to the login screen", preferredStyle: UIAlertController.Style.alert)
        
        alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertAction.Style.default, handler: {_ in
            print("Cancel Action")
        }))

        alert.addAction(UIAlertAction(title: "Sign out", style: UIAlertAction.Style.destructive, handler: {_ in
            print("Sign out Action")
        }))
        
        self.present(alert, animated: true, completion: nil)
    }
    
    func showAlertWithTextField() {
        let alert = UIAlertController(title: "Log out?", message: "Are you sure want to log out?", preferredStyle: .alert)
        
        let confirmAction = UIAlertAction(title: "OK", style: .default) { (_) in
            if let textField = alert.textFields?.first, let text = textField.text {
                print("Text ==> " + text)
                
            }
        }
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { (_) in }
        alert.addTextField{ (textField) in
            textField.placeholder = "Admin passphrase"
            
        }
        
        alert.addAction(confirmAction)
        alert.addAction(cancelAction)
        self.present(alert, animated: true, completion: nil)
    }
    
    
}
