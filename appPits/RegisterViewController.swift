//
//  RegisterViewController.swift
//  appPits
//
//  Created by John Jairo Quintero Pardo on 10/04/18.
//  Copyright © 2018 John Jairo Quintero Pardo. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {

    @IBOutlet weak var tipoPersonaPicker: UIPickerView!
    @IBOutlet weak var tipoDocPicker: UIPickerView!
    @IBOutlet weak var numDocText: UITextField!
    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var lastNameText: UITextField!
    @IBOutlet weak var cityText: UITextField!
    @IBOutlet weak var passText: UITextField!
    @IBOutlet weak var userText: UITextField!
    @IBOutlet weak var telefonoText: UITextField!
    @IBOutlet weak var tipoTelText: UITextField!
    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var addresText: UITextField!
    @IBOutlet weak var deptoText: UITextField!
    @IBOutlet weak var paisText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //Funcion que maneja el evento del button save
    @IBAction func saveButtonTapped(_ sender: Any) {
        
        //Validate required fields are not empty
        if(nameText.text?.isEmpty)! || (numDocText.text?.isEmpty)! || (lastNameText.text?.isEmpty)! || (paisText.text?.isEmpty)! || (deptoText.text?.isEmpty)! || (cityText.text?.isEmpty)! || (addresText.text?.isEmpty)! || (emailText.text?.isEmpty)! || (tipoTelText.text?.isEmpty)! || (telefonoText.text?.isEmpty)! || (userText.text?.isEmpty)! || (passText.text?.isEmpty)!
        {
            //Display alert message and return
            displayMessage(userMesage: "Falta informacion")
            return
        }
        
        //Validate Pass
        /*
        if((passText.text?.elementsEqual(repeatpassText.text!))! != true)
        {
            //Display alert message and return
         displayMessage(userMesage: "los Password no coinciden")
            return
        }
        */
    }
    
    func displayMessage(userMesage:String)->Void{
        DispatchQueue.main.async {
            let alertController = UIAlertController(title: "Alert", message: userMessage, preferredStyle: .alert)
            let OKAction = UIAlertAction(title: "Ok", style: .default){
                (action:UIAlertAction!)in
                //Code will trigger when Ok button tapped.
                DispatchQueue.main.async {
                    self.dismiss(animated: true, completion: nil)
                }
            }
            alertController.addAction(OKAction)
            self.present(alertController, animated: true, completion: nil)
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
