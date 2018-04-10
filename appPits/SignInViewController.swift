//
//  SignInViewController.swift
//  appPits
//
//  Created by John Jairo Quintero Pardo on 10/04/18.
//  Copyright © 2018 John Jairo Quintero Pardo. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {

    @IBOutlet weak var passText: UITextField!
    @IBOutlet weak var userText: UITextField!
    
    //Funcion que maneja el evento al presionar el button de SignIn
    @IBAction func signInButtonTapped(_ sender: Any) {
        print("El boton de login se presiono")
    }
    //Funcion que maneja el evento al presionar el button de Register
    @IBAction func registerButtonTapped(_ sender: Any) {
        print("El boton de registro se presiono")
        
        let registerViewController = self.storyboard?.instantiateViewController(withIdentifier: "RegisterViewController") as! RegisterViewController
        self.present(registerViewController, animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
