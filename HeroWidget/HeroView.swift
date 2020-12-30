//
//  HeroView.swift
//  HeroWidget
//
//  Created by owner on 12/29/20.
//

import SwiftUI

struct HeroView: View {
    
    //6
    let hero : Superhero
    
    
    
    var body: some View {
        //8 yan yana gorunumler icin
        HStack{
//7
        CircularImageView(image: Image(hero.image))
            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).padding()
            
            //11 space koyuyoruz araya
            Spacer()
            
            //10
            VStack{
            //9
                Text(hero.name)
                    .font(.largeTitle)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.purple)
                
                
                Text(hero.realName).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            }.padding() //13
            //12
            Spacer()
        }.frame(width: UIScreen.main.bounds.width, alignment: .center) //14guncel ekran ne kadar sa genislikte o kadar olsun diye yaptik
        
    }
}

struct HeroView_Previews: PreviewProvider {
    static var previews: some View {
        HeroView(hero: batman) //6 dan sonra bunu istedi
    }
}
