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
                //17 tiklaninca ne olacak onu yazmaya basliyoruz
                    .onTapGesture{
                    }
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
