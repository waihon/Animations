//
//  ContentView.swift
//  Animations
//
//  Created by Waihon Yew on 02/06/2021.
//

import SwiftUI

struct ContentView: View {
  @State private var animationAmount = 0.0

  var body: some View {
    Button("Tap Me") {
      withAnimation(.interpolatingSpring(stiffness: 5, damping: 1)) {
        self.animationAmount += 360
      }
    }
    .padding(50)
    .background(Color.red)
    .foregroundColor(.white)
    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
    .rotation3DEffect(.degrees(animationAmount), axis: (x: 0, y: 1, z: 0))
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
