//
//  CardView.swift
//  image
//
//  Created by MAC  on 31.05.2022.
//

import SwiftUI

struct CardView: View {
    
    let cardName: String
    
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            let size = min(width, height)
            
            Rectangle()
                .frame(width: size, height: size * 3 / 2)
                .cornerRadius(15)
                .foregroundColor(.white)
                .overlay(RoundedRectangle(cornerRadius: 15).stroke(lineWidth: 5))
            Text(cardName)
                .font(.system(size: size * 0.15))
                .fontWeight(.bold)
                .offset(x: (size * 2 / 3) * 0.11, y: size * 0.08)
            ClubsView()
                .frame(width: size * 0.15, height: size * 0.15)
                .offset(x: (size * 2 / 3) * 0.08, y: size * 0.25)
            ClubsView()
                .frame(width: size * 0.4, height: size * 0.4)
                .offset(x: size / 3.3, y: size / 1.7 )
            Text(cardName)
                .font(.system(size: size * 0.15))
                .fontWeight(.bold)
                .rotationEffect(Angle(degrees: 180))
                .offset(x: (size * 2 / 3) * 1.23, y: size * 1.23)
            ClubsView()
                .frame(width: size * 0.15, height: size * 0.15)
                .rotationEffect(Angle(degrees: 180))
                .offset(x: (size * 2 / 3) * 1.2, y: size * 1.08)
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(cardName: "A")
            .frame(width: 200, height: 300)
    }
}
