//
//  Superhero.swift
//  HeroWidget
//
//  Created by owner on 12/29/20.
//

import Foundation


//1
struct Superhero : Identifiable, Codable {
    let image : String
    let name : String
    let realName : String
    
    //2 id ile isim ayni olsun diye
    var id : String {image}
    
}
    
    
    //gelistirici hesabi oldugunda anlamli.hangi superkahraman ustune tikladiginda gormek icin.userdefaults.
    

//3
let captain = Superhero(image: "captain", name: "captain", realName: "CaptainAmerica")
let batman = Superhero(image: "batman", name: "batman", realName: "Bruce")
let ironman = Superhero(image: "ironman", name: "ironman", realName: "Tony")


    
