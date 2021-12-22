//
//  PhotoViewController.swift
//  MVCpattern Login
//
//  Created by Bulat Serimbetov on 23.12.2021.
//

import UIKit



class PhotoViewController: UIViewController {
    
    @IBOutlet weak var ImageView: UIImageView!
    
    
    //let user = User.getUser() Вот так работает
    
    let user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ImageView.image = UIImage(named: user.person.image)
    }

}
