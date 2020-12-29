//
//  CircularImageView.swift
//  HeroWidget
//
//  Created by owner on 12/29/20.
//

import SwiftUI

struct CircularImageView: View {
    //4
    var image : Image
    var body: some View {
        //5
        image.resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/) //yuvarlak kesti resmi
            .overlay(Circle().stroke(Color.purple, lineWidth: 5)) //sadece etrafini cizgi ile kapadi renklendirdik
            .shadow(radius: 15) //shadow ekledik
        
    }
}

struct CircularImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircularImageView(image: Image("batman")) //5 imagename istedi
    }
}
