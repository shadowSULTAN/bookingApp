//
//  ViewController.swift
//  bookingApp
//
//  Created by ddukk15 on 16/11/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var user: UITextField!
    @IBOutlet weak var pass: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func login(_ sender: UIButton) {
        if(user.text == "akhil" && pass.text == "surendran"){
            let vc  = storyboard?.instantiateViewController(withIdentifier:"bokking")
            present(vc!, animated: true)
            
        }
        else{
            let alert = UIAlertController(title: "Warnnig", message: "Invalid User", preferredStyle: .actionSheet)
            alert.addAction(UIAlertAction(title: "Check Inputs", style:  UIAlertAction.Style.destructive,handler: nil))
            present(alert, animated: true)
            
            
        }
        
    }

            
        
    }
    



