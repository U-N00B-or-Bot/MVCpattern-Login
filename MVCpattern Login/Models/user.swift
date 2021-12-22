//
//  user.swift
//  MVCpattern Login
//
//  Created by Bulat Serimbetov on 22.12.2021.
//

import Foundation


struct User {
    let userName: String
    let password: String
    let person: HumanExemplar
    
    static func getUser() -> User {
        User(userName: "User", password: "Swift", person: HumanExemplar.getName())
    }
}

struct HumanExemplar {
    let 名前: String
    let 年齢: Int
    let image: String
    
    static func getName() -> HumanExemplar {
        HumanExemplar(名前: "木村", 年齢: 29, image: "hello")
    }
}
