//
//  ContentView.swift
//  image
//
//  Created by MAC  on 31.05.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var cardsIsShowing = false
    
    var body: some View {
        ZStack {
            Color(UIColor(.green))
                .ignoresSafeArea()
            CardTenView()
                .frame(width: 150, height: 300)
                .rotationEffect(Angle(degrees: cardsIsShowing ? -50 : 0))
                .offset(
                    x: cardsIsShowing ? UIScreen.main.bounds.height * -0.05 : UIScreen.main.bounds.height * 0,
                    y: UIScreen.main.bounds.width * 0.09
                )
            CardView(cardName: "J")
                .frame(width: 150, height: 300)
                .rotationEffect(Angle(degrees: cardsIsShowing ? -25 : 0))
                .offset(
                    x: cardsIsShowing ? UIScreen.main.bounds.height * -0.05 : UIScreen.main.bounds.height * 0,
                    y: UIScreen.main.bounds.width * 0.09
                )
            CardView(cardName: "Q")
                .frame(width: 150, height: 300)
                .offset(
                    x: UIScreen.main.bounds.height * 0,
                    y: UIScreen.main.bounds.width * 0.09
                )
            CardView(cardName: "K")
                .frame(width: 150, height: 300)
                .rotationEffect(Angle(degrees: cardsIsShowing ? 25 : 0))
                .offset(
                    x: cardsIsShowing ? UIScreen.main.bounds.height * 0.05 : UIScreen.main.bounds.height * 0,
                    y: UIScreen.main.bounds.width * 0.09
                )
            CardView(cardName: "A")
                .frame(width: 150, height: 300)
                .rotationEffect(Angle(degrees: cardsIsShowing ? 50 : 0))
                .offset(
                    x: cardsIsShowing ? UIScreen.main.bounds.height * 0.1 : UIScreen.main.bounds.height * 0,
                    y: UIScreen.main.bounds.width * 0.09
                )
        }
        .onTapGesture {
            withAnimation {
                cardsIsShowing.toggle()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portrait)
    }
}
