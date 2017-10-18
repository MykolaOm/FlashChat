//
//  LogInViewController.swift
//  Flash Chat
//
//  This is the view controller where users login


import UIKit
import Firebase
//import GoogleSignIn
//, GIDSignInDelegate
class LogInViewController: UIViewController{
//    func sign(_ signIn: GIDSignIn!, didSignInFor user: GIDGoogleUser!, withError error: Error!) {
//        if Error.self != nil {
//            print(Error!.self)
//        }
//        else{
//            print("Google login succesful")
//            self.performSegue(withIdentifier: "goToChat", sender: self)
//        }
//    }
    

    //Textfields pre-linked with IBOutlets
    @IBOutlet var emailTextfield: UITextField!
    @IBOutlet var passwordTextfield: UITextField!
  //  ===================
  //  @IBOutlet weak var signInButton: GIDSignInButton!
 //==================
    
    override func viewDidLoad() {
        super.viewDidLoad()
      //------------------------
//        GIDSignIn.sharedInstance().uiDelegate = self as! GIDSignInUIDelegate
//        GIDSignIn.sharedInstance().signIn()
       //--------------------------------------
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

   
    @IBAction func logInPressed(_ sender: AnyObject) {

        
        //TODO: Log in the user
        Auth.auth().signIn(withEmail: emailTextfield.text!, password: passwordTextfield.text!) { (user, error) in
            if error != nil {
                print(error!)
            }
            else{
                print("logn succesful")
                self.performSegue(withIdentifier: "goToChat", sender: self)
            }
        }
        
    }
    


    
}  
