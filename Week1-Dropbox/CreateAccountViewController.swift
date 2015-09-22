//
//  CreateAccountViewController.swift
//  Week1-Dropbox
//
//  Created by Sybico, Christopher on 9/19/15.
//  Copyright © 2015 Sybico, Christopher. All rights reserved.
//

import UIKit

class CreateAccountViewController: UIViewController {

    @IBOutlet weak var firstNameTextfield: UITextField!
    
    @IBOutlet weak var passwordTextfield: UITextField!
    
    @IBOutlet weak var passwordWeakImage: UIImageView!
    
    @IBOutlet weak var passwordSosoImage: UIImageView!
    
    @IBOutlet weak var passwordGoodImage: UIImageView!
    
    @IBOutlet weak var passwordGreatImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Focus on First Name textfield
        firstNameTextfield.becomeFirstResponder()
        
        // Hide Images
        passwordWeakImage.hidden = true
        passwordSosoImage.hidden = true
        passwordGoodImage.hidden = true
        passwordGreatImage.hidden = true
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onBack(sender: AnyObject) {
        navigationController!.popViewControllerAnimated(true)
    }
    
    @IBAction func passwordTextfieldChanged(sender: AnyObject) {
        if passwordTextfield.text?.characters.count > 0 {
            passwordWeakImage.hidden = false
        }
        if passwordTextfield.text?.characters.count > 4 {
            passwordWeakImage.hidden = true
            passwordSosoImage.hidden = false
        }
        if passwordTextfield.text?.characters.count > 7 {
            passwordSosoImage.hidden = true
            passwordGoodImage.hidden = false
        }
        if passwordTextfield.text?.characters.count > 10 {
            passwordGoodImage.hidden = true
            passwordGreatImage.hidden = false
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
