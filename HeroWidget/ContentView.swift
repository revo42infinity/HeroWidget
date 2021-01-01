//
//  ContentView.swift
//  HeroWidget
//
//  Created by owner on 12/29/20.
//

import SwiftUI

//15
let superHeroArray = [captain, batman, ironman]

struct ContentView: View {
    var body: some View {
        //16
        VStack{
            ForEach(superHeroArray){ hero in //hero in yapinca butun superhero array icindeki elementler hero degiskenine ataniyor
                HeroView(hero: hero)
                //17 tiklaninca ne olacak onu yazmaya basliyoruz...count kac kere tiklaninca ne olacak ama sildik farkli yazacagiz
                    //.onTapGesture(count: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/, perform: {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Code@*/ /*@END_MENU_TOKEN@*/
                  //  })
                    .onTapGesture {
                        //19
                        savetoDefaults(hero: hero)
                        //bundan sonra dev hesabi lazim cuku tiklanilan heroyu appstorage kullanarak userdefault a kaydedecegiz
                        
                    }
                    
                
            }
        }
    }
    //18 tiklaninca olacak...ismini yazdiracagiz
    func savetoDefaults(hero:Superhero) {
        print(hero.name)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}





//appstorage olayi capability git. dev hesabiyla  app groups al.bundle id al group olustur

