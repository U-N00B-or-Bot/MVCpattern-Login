//
//  ViewController.swift
//  MVCpattern Login
//
//  Created by Bulat Serimbetov on 22.12.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var pass: UITextField!
    
   

    
    private let user = User.getUser()
    private func clear(){
        pass.text = ""
        name.text = ""
    }
    

    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBarController = segue.destination as! UITabBarController
        let viewControllers = tabBarController.viewControllers
        
        viewControllers!.forEach{
            if let helloVC = $0 as? HelloViewController {
                helloVC.info = "こんにちは, \(user.person.名前)さん!"
            } else if let navVC = $0 as? UINavigationController {
                let orangeVC = navVC.topViewController as! OrangeViewController
                orangeVC.orangeInfo = "\(user.person.年齢)歳です。"
            }
        }
    }
        
         
    @IBAction func お忘れの場合() {
        pass.text = "Swift"
        name.text = "User"
    }
    
     
    
    @IBAction func btnPress() {
        if name.text != user.userName || pass.text != user.password{
            showAlert(title: "禁止", message: "IDやパスワードが正しくありません。\n入力し直してください。", textField: name)
            pass.text = ""
            name.text = ""
        }
    }
    
    @IBAction func unwind(segue: UIStoryboardSegue) {
        clear()
    }

    
    }
    
    
    
extension ViewController {
    private func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let pressedOK = UIAlertAction(title: "OK", style: .default) { _ in }
        
        alert.addAction(pressedOK)
        present(alert, animated: true)
    }
}



