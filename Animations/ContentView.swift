//
//  ContentView.swift
//  Animations
//
//  Created by Waihon Yew on 02/06/2021.
//

import SwiftUI

struct ContentView: View {
  @State private var animationAmount: CGFloat = 1

  var body: some View {
    VStack {
      Stepper("Scale amount", value: $animationAmount.animation(), in: 1...10)
      
      Spacer()
      
      Button("Tap Me") {
        self.animationAmount += 1
      }
      .padding(40)
      .background(Color.red)
      .foregroundColor(.white)
      .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
      .scaleEffect(animationAmount)
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
